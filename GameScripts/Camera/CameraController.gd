extends Node3D

@onready var camera = $PlayCamera

func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_pressed("camera_pan_up"):
		pass
	if Input.is_action_pressed("camera_pan_down"):
		pass
	if Input.is_action_pressed("camera_pan_left"):
		pass
	if Input.is_action_pressed("camera_pan_right"):
		pass
	if Input.is_action_pressed("camera_rotate_left"):
		pass
	if Input.is_action_pressed("camera_rotate_right"):
		pass
	if Input.is_action_pressed("camera_zoom_in"):
		pass
	if Input.is_action_pressed("camera_zoom_out"):
		pass
	pass
