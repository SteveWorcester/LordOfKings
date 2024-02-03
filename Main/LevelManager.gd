extends Node3D

var game_ui : Control
var current_level : Node3D

func _ready():	
	pass

func init_node():
	game_ui.end_turn.connect(_on_end_turn_pressed)
	pass

func load_level(filepath, start_fresh : bool):
	var level_scene = load(filepath)
	var level_instance = level_scene.instantiate()	
	self.add_child(level_instance)
	current_level = level_instance
	if start_fresh:
		current_level.start_level_from_scratch()

func _on_end_turn_pressed():
	if current_level.has_method("update_turn"):
		current_level.update_turn()
		pass
	else:
		print("LEVEL SCENE DOES NOT HAVE METHOD 'update_turn'!")
