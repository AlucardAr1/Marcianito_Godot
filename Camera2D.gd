extends Camera2D

var shortscene = false

func _physics_process(delta):
	
		position = (get_parent().get_node("Player").position + get_parent().get_node("Player2").position)/2
		if (get_parent().get_node("Player").position.x - get_parent().get_node("Player2").position.x > 500):
			zoom.x += (1.5 - zoom.x)/10
			zoom.y += (1.5 - zoom.y)/10
		else:
			zoom.x += (1 - zoom.x)/10
			zoom.y += (1 - zoom.y)/10
			
		position = (get_parent().get_node("Player2").position + get_parent().get_node("Player").position)/2
		if (get_parent().get_node("Player2").position.x - get_parent().get_node("Player").position.x > 500):
			zoom.x += (1.5 - zoom.x)/10
			zoom.y += (1.5 - zoom.y)/10
		else:
			zoom.x += (1 - zoom.x)/10
			zoom.y += (1 - zoom.y)/10