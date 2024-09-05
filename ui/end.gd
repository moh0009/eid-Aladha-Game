extends Control

func _on_return_pressed():
	get_tree().change_scene_to_file("res://scenes/Main.tscn")

func _on_exit_pressed():
	get_tree().quit()
