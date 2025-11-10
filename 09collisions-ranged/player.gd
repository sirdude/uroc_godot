extends CharacterBody2D

@onready var gun: Node2D = $Gun

const SPEED = 300.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if direction != Vector2.ZERO:
		gun.setup_direction(direction)
			
	if Input.is_action_pressed("attack"):
		gun.shoot()
	
	velocity = direction * SPEED
	move_and_slide()
