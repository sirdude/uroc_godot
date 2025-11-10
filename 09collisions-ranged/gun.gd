extends Node2D

@export var shootSpeed = 6
@onready var timer: Timer = $Timer
@onready var marker_2d: Marker2D = $Marker2D

const BULLET = preload("res://bullet.tscn")

var canShoot = true
var bulletDirection = Vector2(1,0)

func _ready() -> void:
	timer.wait_time = 1.0 / shootSpeed
	
func shoot() -> void:
	if canShoot:
		canShoot = false
		timer.start()
		
		var bulletNode = BULLET.instantiate()
		
		bulletNode.set_direction(bulletDirection)
		get_tree().root.add_child(bulletNode)
		bulletNode.global_position = marker_2d.global_position

func _on_timer_timeout() -> void:
	canShoot = true
	
func setup_direction(direction):
	bulletDirection = direction
	
	if direction.x > 0:
		scale.x = 1
		rotation_degrees = 0
	elif direction.x < 0:
		scale.x = -1
		rotation_degrees = 0
	elif direction.y < 0:
		scale.x = 1
		rotation_degrees = -90
	else:
		scale.x = 1
		rotation_degrees = 90
