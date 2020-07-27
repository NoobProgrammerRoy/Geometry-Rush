extends CanvasLayer

func _ready():
	$Score.text = "0"
	
func _process(delta):
	$"/root/Global".score += 1
	$Score.text = str($"/root/Global".score)
