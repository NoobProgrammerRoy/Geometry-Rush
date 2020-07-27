extends Area2D

var speed = -3
var pipe_width = 0

func _ready():
	pipe_width = 16

func _physics_process(delta):
	speed -= 0.001
	position.x += speed
	if position.x < -pipe_width:
		position.x = 2000

func _on_Pipes_body_entered(body):
	# Replace with function body.
	$AudioStreamPlayer.play()
	body.end_game()
