class_name State
extends Node

var state_machine : Node
signal change_state(new_state_name)
var camera : Camera3D

func state_process(delta) -> void:
	pass

func state_physics_process(delta) -> void:
	pass

func state_handle_input(event : InputEvent) -> void:
	pass

func state_enter() -> void:
	pass

func state_exit() -> void:
	pass
