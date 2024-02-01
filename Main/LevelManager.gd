extends Node3D

func load_level(filepath):
	var level_scene = load(filepath)
	var level_instance = level_scene.instantiate()
	self.add_child(level_instance)
