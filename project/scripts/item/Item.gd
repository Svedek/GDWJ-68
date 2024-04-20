class_name Item
extends Node2D


func activate_item() -> bool:
	push_warning("Item activate_item() not implemented")
	return false
	

func dir_to_mouse() -> Vector2:
	return (get_viewport().get_mouse_position() - position).normalized()
