extends Node2D

var pode_usar = false
onready var anim = $Corpo/AnimationPlayer
onready var luz = $Luz
func _on_Area2D_body_entered(body):
	if body.collision_layer == 1:
		pode_usar = true


func _on_Area2D_body_exited(body):
	if body.collision_layer == 1:
		pode_usar = false
		
func _input(event):
	if Input.is_action_just_pressed("interagir") and pode_usar:
		if $Corpo.rotation_degrees == 0:
			anim.play("horizontal_vertical")
		else:
			anim.play("vertical_horizontal")
		luz.enabled = true
