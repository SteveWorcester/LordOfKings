extends Node3D

@onready var main_ui : Control
@onready var level_manager : Node3D
@onready var game_ui : Control

#THIS IS A TEMP TEST LEVEL
var level_1_location = "res://Levels/TestLevel/TestLevel.tscn"

func _ready():
	main_ui = $MainUi
	level_manager = $LevelManager
	game_ui = $GameUi
	
	level_manager.game_ui = game_ui
	game_ui.level_manager = level_manager
	
	level_manager.init_node()
	pass 

func _process(delta):
	pass

func on_start_game_button_pressed():
	main_ui.visible = false
	level_manager.load_level(level_1_location, true)
	game_ui.visible = true
