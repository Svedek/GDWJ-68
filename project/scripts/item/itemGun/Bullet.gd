extends Node2D


var vel: Vector2 = Vector2.ZERO


func initialize_bullet(velocity: Vector2):
	vel = velocity
	rotation = vel.angle()


func _physics_process(delta):
	position += vel*delta


