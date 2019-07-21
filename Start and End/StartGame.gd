extends TextureButton


func _on_StartGame_pressed():
	get_tree().change_scene("res://Mundos/Mundo 2.tscn")
	pass # Replace with function body.
	



func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Option_pressed():
	get_tree().change_scene("res://Menu/Opciones.tscn")
	
	pass # Replace with function body.


func _on_Volver_pressed():
	get_tree().change_scene("res://Start and End/StartGame.tscn")
	pass # Replace with function body.
