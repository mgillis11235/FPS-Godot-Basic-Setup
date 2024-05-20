extends Interactable

@export var suicide : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var suicide_node = get_node(suicide)
@onready var on = on_by_default

func _ready():
	set_flag_energy()

func get_interaction_text(): 
	return "Press E To Enter Booth And Commit Suicide" if on else "Not getting out of this that easily, unfortunately."

func interact():
	on = !on
	set_flag_energy()
	%failure.play()
		

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
