extends Sprite

const SPEED = -2

var background_width = 0

func _ready():
	background_width = texture.get_size().x 
	
func _physics_process(delta):
	position.x += SPEED
	if position.x < -background_width:
		position.x += 3 * background_width
