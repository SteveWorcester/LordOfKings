extends Control

var level_manager : Node3D

signal end_turn

func _ready():
	pass 

func init_node():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_end_turn_pressed():
	end_turn.emit()
	pass # Replace with function body.
