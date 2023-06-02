extends Control



func _on_continue_pressed():
	get_tree().change_scene("res://Niveis/Fase01.tscn")


func _on_Quit_pressed():
	$CenterContainer/VBoxContainer/CenterContainer/HBoxContainer/AnimatedSprite.play("death")


func _on_AnimatedSprite_animation_finished():
	get_tree().quit()
