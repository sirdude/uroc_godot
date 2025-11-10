extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("Bingo")
	body.add_score(10)
	queue_free()
