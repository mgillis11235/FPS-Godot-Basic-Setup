extends Interactable

@export var bomb : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var bomb_node = get_node(bomb)
@onready var on = on_by_default

func _ready():
	pass
	
func get_interaction_text(): 
	return "Press E To Detonate Atomic Bomb" if on else "Goodbye."
	
func interact():
	on = !on
	%soundtrack.stop()
	%bombvideo.play()
	%atomicexplosion.play()
