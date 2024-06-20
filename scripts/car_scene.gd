extends Node2D

@export var next_scene_path: String = ""

var cur_pos = Vector2(position.x, position.y)
var bridge_ledge = Vector2(8064, 320)
var crash_site = Vector2(9756, 2368)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#drive to bridge
	if(global_position.x < bridge_ledge.x):
		print(global_position)
		global_position = global_position.move_toward(bridge_ledge, 2000 * delta)
	#fall off end of bridge
	if(global_position.x >= bridge_ledge.x):
		print(global_position)
		global_position = global_position.move_toward(crash_site, 2000 * delta)
		if(self.rotation_degrees < 157):
			self.rotate(2 * delta)
			
	if(global_position.distance_to(crash_site) < 1 && self.rotation_degrees > 156):
		change_scene()
		set_process(false)
		print("Reached crash site. Stopping process.")
		
		
func change_scene():
	if next_scene_path:
		get_tree().change_scene_to_file(next_scene_path)
	else:
		print("There is something wrong with my path!")
		
