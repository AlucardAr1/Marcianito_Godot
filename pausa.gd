extends TouchScreenButton

func _input(event):
	if event.is_action("pausa"):
		get_tree().paused = !get_tree().paused