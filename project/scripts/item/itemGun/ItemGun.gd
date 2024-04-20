class_name ItemGun
extends Item

@export_category("Gun")
@export var cooldown: float = 1.0
@export var spread_degrees: float = 5.0
@export var bullet_velocity: float = 1.0
@export var bullet_scene: PackedScene

var cooldown_timer: Timer

func _ready():
	cooldown_timer = Timer.new()
	cooldown_timer.wait_time = cooldown
	cooldown_timer.one_shot = true
	add_child(cooldown_timer)


# Override - Item
func activate_item() -> bool:
	if cooldown_timer.time_left > 0:
		return false
	shoot()
	return true


func shoot():
	push_warning("ItemGun shoot() not implemented")


func create_bullet():
	pass
