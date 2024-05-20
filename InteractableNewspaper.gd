extends Interactable

@export var flag : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var flag_node = get_node(flag)
@onready var on = on_by_default

func _ready():
	set_flag_energy()

func get_interaction_text(): 
	return "You found a secret! Press E to Interact" if on else "It may be coming back sooner than you think..."

func interact():
	on = !on
	set_flag_energy()
	%onion.play()
	%explosion_vfx.visible = true
		

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
