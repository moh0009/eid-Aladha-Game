extends Node2D

@export var scroll_speed: Vector2 = Vector2(100, 0)

func _process(delta: float) -> void:
	$ParallaxBackground.scroll_offset += scroll_speed * delta
