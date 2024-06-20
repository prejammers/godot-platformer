extends Node2D

#added option to change the name in the node manually 
#different portals can now have diff paths
@export var next_scene_path: String = ""

@onready var change_scene_timer = $ChangeSceneTimer

#checks if the body that overlaps characterbody2d with the name Player
func _on_player_detect_body_entered(body):
	if body.name == "Player":
		change_scene_timer.start()
#tried calling function normally gives error now calls func after delta is finished

#checks if path is set on the node
func change_scene():
	if next_scene_path:
		get_tree().change_scene_to_file(next_scene_path)
	else:
		print("There is something wrong with my path!")


func _on_change_scene_timer_timeout():
	change_scene()
