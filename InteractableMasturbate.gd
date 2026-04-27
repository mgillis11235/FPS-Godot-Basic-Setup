extends Interactable

@export var flag1 : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var flag_node = get_node(flag1)
@onready var on = on_by_default

func _ready():
	set_flag_energy()

func get_interaction_text(): 
	return "Press E To Quietly Masturbate in Corner" if on else "...!"

func interact():
	on = !on
	set_flag_energy()
	%doomguy.volume_db = -25
	%soundtrack.stop()
	%masturbate.play()
	%masturbate2.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = false
	await get_tree().create_timer(0.5).timeout
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = false
	await get_tree().create_timer(0.7).timeout
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = false
	%damage.visible = false
	await get_tree().create_timer(0.7).timeout
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = false
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = true
	%doomguy.play()
	await get_tree().create_timer(0.1).timeout
	%damage.visible = false
	#%swish.play()
	#%success1.play()
	await get_tree().create_timer(2).timeout
	%soundtrack.play()
	
	%doomguy.volume_db = 0

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
