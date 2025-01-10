extends Node

@export var speed = 50

var speed_mult = 10000

signal moved

func move(direction: Vector2):
	if direction != Vector2.ZERO:
		moved.emit()
	get_parent().velocity = direction * speed * speed_mult
	get_parent().move_and_slide()
