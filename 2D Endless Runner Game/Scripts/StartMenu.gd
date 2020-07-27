extends Control

func _on_TextureButton_pressed():
	$CenterContainer/VBoxContainer/HBoxContainer/TextureButton/AudioStreamPlayer.play()
	get_tree().change_scene("res://Scenes/MainScene.tscn") # Replace with function body.
