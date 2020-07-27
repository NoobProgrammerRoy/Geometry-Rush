extends Control

func _ready():
	$CenterContainer/VBoxContainer/Label2.text += str($"/root/Global".score)
	$"/root/Global".load_score()
	if $"/root/Global".score > $"/root/Global".best:
		$"/root/Global".best = $"/root/Global".score
		$"/root/Global".save_score()
	$CenterContainer/VBoxContainer/Label3.text += str($"/root/Global".best)
	
func _on_TextureButton_pressed():
	$CenterContainer/VBoxContainer/HBoxContainer/TextureButton/AudioStreamPlayer.play()
	$"/root/Global".score = 0
	get_tree().change_scene("res://Scenes/MainScene.tscn") # Replace with function body.
