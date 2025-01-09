extends Node

signal moviment_inputed(direction: Vector2)

func _process(delta):
	if Input.is_action_pressed("move_right"):
		moviment_inputed.emit(Vector2(delta,0))
	if Input.is_action_pressed("move_left"):
		moviment_inputed.emit(Vector2(-delta,0))
