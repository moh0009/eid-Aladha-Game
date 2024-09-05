extends Node2D

@export var ca:CanvasLayer
@export var anim:AnimationPlayer
@export var texts:Array
@export var img:String

# Called when the node enters the scene tree for the first time.
func _ready():
	ca.visible = false
	ca.text = texts
	ca.img.texture = load(img)
	$Area2D/Sprite2D.texture = load(img)
	anim.play("idle")
	
func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		ca.visible = false
		anim.stop()

func _on_area_2d_body_entered(body):
	if body.name == "player":
		ca.visible = true


func _on_area_2d_body_exited(body):
	if body.name == "player":
		ca.visible = false
