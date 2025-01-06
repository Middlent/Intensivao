extends CharacterBody2D

@export var speed = 50

var speed_mult = 10000

func _process(delta):
	if Input.is_action_pressed("move_right"):
		velocity = Vector2(delta * speed * speed_mult, 0)
		move_and_slide()
	if Input.is_action_pressed("move_left"):
		velocity = Vector2(-delta * speed * speed_mult, 0)
		move_and_slide()
