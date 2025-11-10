extends Control

var score: int = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	reset_score()
	$PlayBGMusic.play()

func reset_score():
	score = 0
	$VBoxContainer/Score.set_text(str(score))
	
func add_score(x: int):
	score += x
	$VBoxContainer/Score.set_text(str(score))

func _on_clickmebutton_pressed():
	add_score(50)
	$PlayScream.play()

func _on_resetbutton_pressed():
	reset_score()

func _on_quitbutton_pressed():
	get_tree().quit()
