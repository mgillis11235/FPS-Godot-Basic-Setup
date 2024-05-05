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
	return "Press E To Vote For Flag" if on else "You can't vote for a flag, you imbecile."

func interact():
	on = !on
	set_flag_energy()
	
		

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
