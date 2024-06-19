extends Control

@onready var player = $"../.."

func _on_resume_pressed():
<<<<<<< HEAD
	player.pauseMenu()
=======
	$AudioStreamPlayer2D.play()
	main.pauseMenu()
>>>>>>> main

func _on_quit_pressed():
	get_tree().quit()
