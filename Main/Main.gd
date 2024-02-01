extends Node3D

@onready var main_ui = $MainUi
@onready var level_manager = $LevelManager

#THIS IS A TEMP TEST LEVEL
var level_1_location = "res://Levels/TestLevel/TestLevel.tscn"

func _ready():
	pass 


func _process(delta):
	pass

func on_start_game_button_pressed():
	main_ui.visible = false
	level_manager.load_level(level_1_location)
