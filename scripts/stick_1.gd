extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_player_detect_body_entered(body):
	var player = get_parent().get_node("Player")
	var sprite = get_node("stickSprite")
	if body.name == "Player":
		print("entered key")
		player.hasKey = true
		sprite.hide()
		get_node("PointLight2D").hide()
		get_node("PlayerDetect").hide()
		
		#change_scene_timer.start()
	#tried calling function normally gives error now calls func after delta is finished
