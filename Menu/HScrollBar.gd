extends HScrollBar


func _ready():
	pass

func _process(delta):
	HScrollBar.min = 10
	HScrollBar.max = 100
	
	