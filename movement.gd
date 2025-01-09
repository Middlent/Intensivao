extends Node

@export var speed = 50

var speed_mult = 10000

func move(direction: Vector2):
	get_parent().velocity = direction * speed * speed_mult
	get_parent().move_and_slide()

# Call down, signal up/side
