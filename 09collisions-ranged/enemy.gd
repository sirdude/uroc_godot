extends Area2D

@export var MAX_HEALTH = 100
var health

func _ready() -> void:
	health = MAX_HEALTH
	$ProgressBar.value = health
	
func get_damage(damage: int):
	health -= damage
	if health <0:
		queue_free()
	else:
		$ProgressBar.value = health
