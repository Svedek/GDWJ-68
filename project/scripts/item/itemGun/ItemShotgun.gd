extends ItemGun

@export_category("Shotgun")
@export var bullets: int = 7


func shoot():
	var dir: Vector2 = dir_to_mouse()


