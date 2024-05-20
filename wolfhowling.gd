extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_bombvideo_finished():
	await get_tree().create_timer(6).timeout
	%wolfhowling.play()
	await get_tree().create_timer(15).timeout
	get_tree().quit()
