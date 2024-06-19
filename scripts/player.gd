extends CharacterBody2D

@export var speed = 500
@export var gravity = 50
@export var jump_force = 1800
@export var max_jumps = 2
@onready var pause_menu = $Camera2D/Pause_Menu
@onready var level_select = $"Camera2D/Level Select"
var jump_count = 0
var paused = false
var leveled = false

func _physics_process(delta):
	if !is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
	
	if is_on_floor():
		jump_count = 0
	if Input.is_action_just_pressed("jump") && jump_count < max_jumps:
		velocity.y = -jump_force
		jump_count += 1
		
	var horizontal_direction = Input.get_axis("move_left", "move_right")
	velocity.x = speed * horizontal_direction
	move_and_slide()
	
	if Input.is_action_just_pressed("Pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused
	
	if Input.is_action_just_pressed("Level Select"):
		levelSelect()

func levelSelect():
	if leveled:
		level_select.hide()
		Engine.time_scale = 1
	else:
		level_select.show()
		Engine.time_scale = 0
	leveled = !leveled
