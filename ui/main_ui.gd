extends CanvasLayer

var clicks = 0
var text = ["hi"]
@onready var  img = $Panel/VBoxContainer/Sprite2D

func _ready():
	
	$Panel/VBoxContainer/Label.text = "السلام عليكم ورحمة الله وبركاته"
	
func _process(delta):
	$Panel/VBoxContainer/Sprite2D/AnimationPlayer.play("idle")

	
func _on_next_pressed():
	if clicks <= text.size()-1:
		$Panel/VBoxContainer/Label.text = text[clicks]
		clicks += 1
	else :
		clicks  = 0


