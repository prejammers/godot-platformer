extends AudioStreamPlayer2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.play() # Replace with function body.

func _on_music_finished():
	self.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
