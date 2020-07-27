extends Area2D

func _on_Base_body_entered(body):
	$AudioStreamPlayer.play()
	body.end_game() # Replace with function body.

