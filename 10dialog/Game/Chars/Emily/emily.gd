extends CharacterBody2D

func _input(event: InputEvent) -> void:
	if get_node_or_null('DialogNode') == null:
		if event.is_action_pressed("interact") and $Hint.visible:
			get_tree().paused = true
			Dialogic.start('emily')
			get_tree().paused = false

func _on_interact_area_body_entered(_body: Node2D) -> void:
	$Hint.visible = true

func _on_interact_area_body_exited(_body: Node2D) -> void:
	$Hint.visible = false
