extends CharacterBody2D


@export var a: Array[Item]

func call_item(index: int) -> bool:
	if index < 0 or index >= a.size():
		push_warning("Out of bounds in robot call_item()")
		return false
	if a[index] == null:
		return false
	return a[index].activate_item()

