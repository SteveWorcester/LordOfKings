extends Node

var current_state : State
var all_states : Dictionary = {}
var camera : Camera3D

func state_machine_init():
	for child in get_children():
		if child is State:
			all_states[child.name] = child
			child.state_machine = self
			child.change_state.connect(state_machine_change_state)
			child.camera = camera
		else: 
			print("state machine has child %s, but this child is not a state." % child.name)
	
	current_state = all_states["State_Init"]
	current_state.state_enter()

func _unhandled_input(event : InputEvent) -> void:
	current_state.state_handle_input(event)

func state_machine_process(delta, event : InputEvent) -> void:
	current_state.state_process(delta)

func state_machine_physics_process(delta, event : InputEvent) -> void: 
	current_state.state_physics_process(delta)

func state_machine_change_state(new_state_name : String):
	var new_state = all_states[new_state_name]
	
	if new_state != null && new_state != current_state:
		current_state.state_exit()
		current_state = new_state
		current_state.state_enter()
	else: 
		print("State Machine attempted to change states from %s to %s, but failed." % current_state.name, new_state_name)
