extends RigidBody2D

const UP_IMPULSE = -50

func _input(event):
	if Input.is_action_just_pressed("Jump") or (event is InputEventScreenTouch and event.pressed):
		set_linear_velocity(Vector2(0,0))
		apply_central_impulse(Vector2(0,UP_IMPULSE))
		$AudioStreamPlayer.play()

func end_game():
	get_tree().change_scene("res://Scenes/GameOver.tscn")
