extends CharacterBody2D

var old_direction = 1

func on_movement_inputed(direction):
	if sign(direction.x) != old_direction:
		scale.x = -1
		old_direction = sign(direction.x)


func _input(event):
	if event.is_action_pressed("attack"):
		$AnimationPlayer.play_animation("attack")
