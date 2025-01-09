extends Node

signal moviment_inputed(direction: Vector2)

func _process(delta):
	var vel = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		vel.x += delta
	if Input.is_action_pressed("move_left"):
		vel.x -= delta
	if Input.is_action_pressed("move_up"):
		vel.y -= delta
	if Input.is_action_pressed("move_down"):
		vel.y += delta
		
	moviment_inputed.emit(vel)
