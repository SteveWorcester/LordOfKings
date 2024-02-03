extends Node3D

enum Season {
	Spring, 
	Summer, 
	Autumn, 
	Winter
	}

@onready var sunPosition : Dictionary = {
	Season.Spring: $Terrain/Light_Spring,
	Season.Summer:$Terrain/Light_Summer,
	Season.Autumn:$Terrain/Light_Autumn,
	Season.Winter:$Terrain/Light_Winter
}

var current_season : Season
var startingSeason : Season

func _ready():
	$StateMachine.state_machine_init()	

func start_level_from_scratch():
	startingSeason = randi_range(0, 3) as Season
	current_season = startingSeason
	update_turn()

func update_turn():
	#update sun position
	var new_season = (current_season + 1) % 4
	print("old season: %s" % current_season)
	print("new season: %s" % new_season)
	sunPosition[current_season].visible = false
	sunPosition[new_season].visible = true
	
	current_season = new_season
