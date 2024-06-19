extends Control

@onready var main = $"../../.."

func _on_resume_pressed():
	$AudioStreamPlayer2D.play()
	main.pauseMenu()

func _on_quit_pressed():
	get_tree().quit()
