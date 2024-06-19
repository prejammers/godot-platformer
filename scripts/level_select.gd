extends Control

@onready var level_select = $"."


func _on_test_level_1_pressed():
	get_tree().change_scene_to_file("res://scene/levels/test_level.tscn:")
	

func _on_test_level_2_pressed():
	get_tree().change_scene_to_file("res://scene/levels/test_level2.tscn")
