extends Area2D

@export var damage = 10
@export var speed = 400
@export var timeout_time = 4
var direction:Vector2

func _ready():
	await get_tree().create_timer(timeout_time).timeout
	queue_free()

func set_direction(bulletDirection):
	direction = bulletDirection
	rotation_degrees = rad_to_deg(global_position.angle_to_point(global_position+direction))
	
func _physics_process(delta: float) -> void:
	global_position += direction * speed * delta

func _on_area_entered(area: Area2D) -> void:
	area.get_damage(damage)
	queue_free()
