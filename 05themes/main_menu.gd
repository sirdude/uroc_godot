extends Control
var rnd = RandomNumberGenerator.new()

func _ready():
	rnd.randomize()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_play_button_pressed() -> void:
	randomize()
	var x = rnd.randi() % 3;
	match x:
		0:
			get_tree().change_scene_to_file("res://main_menu.tscn")
		1:
			get_tree().change_scene_to_file("res://main_menu_theme.tscn")
		2:
			get_tree().change_scene_to_file("res://theme2.tscn")
