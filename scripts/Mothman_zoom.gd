extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if scale < Vector2(20, 20):
		scale *= 1.015
		self.translate(Vector2(-0.5, 2.4))
	else:
		get_parent().get_node("Quit").visible = true;
