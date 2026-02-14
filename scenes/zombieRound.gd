extends Node3D
@export var zombie_scene : PackedScene
@export var zombies_per_wave = 5 
@export var wave_delay =10.0

var current_wave = 1

func start_wave():
	for i in range(zombies_per_wave * current_wave):
		await get_tree().create_timer(randf_range(0.5, 2.0)).timeout
		#spawn_zombie()
		print("Lol ahhaha")
	current_wave += 1
	await  get_tree().create_timer(wave_delay).timeout
	start_wave()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
