extends Area2D

var canGo = false
var cutscene_class = load("res://cutscene tutorial/CanvasLayer.tscn")


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept") and canGo == true:
		get_parent().add_child(cutscene_class.instance())
		


	rotate(1.1)



	pass # Replace with function body.
