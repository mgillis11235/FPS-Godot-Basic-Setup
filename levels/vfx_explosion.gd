extends Node3D

@onready var explosion_scene = load("res://levels/vfx_explosion.tscn")
@onready var awaiting_particles = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.kiss_counter == 5 and awaiting_particles:
		var instance = explosion_scene.instantiate()
	
		add_sibling(instance)
		instance.global_position = Vector3(-7.8,1.66,5.71 )
		
		await get_tree().create_timer(0.02).timeout

		instance.queue_free() 
		awaiting_particles = false
		$Sparks.emitting = false
		$Sparks2.emitting = false 
		$Flash.emitting = false 
		$Fire.emitting = false 
		$Smoke.emitting = false
	pass
