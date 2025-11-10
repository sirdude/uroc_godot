extends Node2D

func _ready() -> void:
	get_tree().paused = true
	Dialogic.Inputs.auto_advance.enabled_until_user_input = true
	Dialogic.start("intro")
	Dialogic.Inputs.auto_advance.enabled_until_user_input = false
	get_tree().paused = false
