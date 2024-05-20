extends Interactable

@export var hoop : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var hoop_node = get_node(hoop)
@onready var on = on_by_default

func _ready():
	pass
	
func get_interaction_text(): 
	return "Press E To Shoot Ballot Through Hoop" if on else "Swish!"

func interact():
	on = !on
	set_flag_energy()
	%swish.play()
	
		

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
