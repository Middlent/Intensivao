extends Node

signal moviment_inputed(direction: Vector2)

signal stopped

var is_stopped = true

@export var input_lock = false

func _process(delta):
	if not input_lock:
		var vel = Vector2.ZERO
		if Input.is_action_pressed("move_right"):
			vel.x += delta
		if Input.is_action_pressed("move_left"):
			vel.x -= delta
		if Input.is_action_pressed("move_up"):
			vel.y -= delta
		if Input.is_action_pressed("move_down"):
			vel.y += delta
			
		if vel != Vector2.ZERO:
			is_stopped = false
			moviment_inputed.emit(vel)
		elif !is_stopped:
			is_stopped = true
			stopped.emit()
