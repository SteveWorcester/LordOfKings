extends Node3D

@export var cameraMoveSpeed : float = 1

@onready var camera = $PlayCamera

var tweening : bool = false
var moveDirection : Vector3

func _ready():
	pass 

func _physics_process(delta):
	if Input.is_action_pressed("camera_pan_up"):
		moveDirection += Vector3.FORWARD
		pass
	if Input.is_action_pressed("camera_pan_down"):
		moveDirection += Vector3.BACK
		pass
	if Input.is_action_pressed("camera_pan_left"):
		moveDirection += Vector3.LEFT
		pass
	if Input.is_action_pressed("camera_pan_right"):
		moveDirection += Vector3.RIGHT
		pass
	if Input.is_action_pressed("camera_rotate_left"):
		print("camera rotatey not in yet")
		pass
	if Input.is_action_pressed("camera_rotate_right"):
		print("camera rotatey not in yet")
		pass
	if Input.is_action_just_pressed("camera_zoom_in"):
		moveDirection += Vector3.DOWN
		pass
	if Input.is_action_just_pressed("camera_zoom_out"):
		moveDirection += Vector3.UP
		pass
	camera.position += moveDirection.normalized() * cameraMoveSpeed
	moveDirection = Vector3.ZERO
	pass

