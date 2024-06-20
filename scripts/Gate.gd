extends Node2D

#added option to change the name in the node manually 
#different portals can now have diff paths
@export var next_scene_path: String = ""

@onready var change_scene_timer = $ChangeSceneTimer
var player_in_portal = false

#checks if the body that overlaps characterbody2d with the name Player
func _on_player_detect_body_entered(body):
	if body.name == "Player":
		player_in_portal = true
		#change_scene_timer.start()
#tried calling function normally gives error now calls func after delta is finished

#checks if path is set on the node
func change_scene():
	if next_scene_path:
		get_tree().change_scene_to_file(next_scene_path)
	else:
		print("There is something wrong with my path!")

func _on_player_detect_body_exited(body):
	if body.name == "Player":
		player_in_portal = false
		
func _process(delta):
	if player_in_portal and Input.is_action_just_pressed("forward"):
		change_scene()
