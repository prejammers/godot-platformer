extends Control

@onready var pause_menu = $"../.."

func _on_resume_pressed():
	$AudioStreamPlayer2D.play()
	pause_menu.pauseMenu()

func _on_quit_pressed():
	get_tree().quit()
