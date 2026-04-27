extends Interactable

@export var flag1 : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var flag_node = get_node(flag1)
@onready var on = on_by_default

@onready var overlay = %redoverlay
var tween

func trigger_red_fade_and_quit():
	overlay.color.a = 0.0
	
	tween = create_tween()
	tween.tween_property(overlay, "color:a", 1.0, 8.0)
	tween.tween_callback(func(): get_tree().quit())
	
func _ready():
	set_flag_energy()

func get_interaction_text(): 
	return "press e To kill self before altar of wealth" if on else "..."

func interact():
	on = !on
	set_flag_energy()
	trigger_red_fade_and_quit()

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
