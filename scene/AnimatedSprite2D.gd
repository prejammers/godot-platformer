extends AnimatedSprite2D

func _process(delta):
	if Input.is_action_pressed("move_right"):
		play()
	else:
		stop()
	if Input.is_action_pressed("move_left"):
		play()
	else:
		stop()
