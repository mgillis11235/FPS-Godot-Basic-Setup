extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%redoverlay.mouse_filter = Control.MOUSE_FILTER_IGNORE


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
