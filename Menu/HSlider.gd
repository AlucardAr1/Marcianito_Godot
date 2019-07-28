extends HSlider


func _ready():
	pass 

func _on_HSlider_value_changed(value):
	var volumen = AudioServer.get_bus_effect(AudioServer.get_bus_index("LeftRigth"),0)
