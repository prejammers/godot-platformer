extends Control

@onready var Level_Select = $"../.."

func _on_resume_pressed():
	$AudioStreamPlayer2D.play()
	Level_Select.pauseMenu()

