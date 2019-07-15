extends VideoPlayer

var aspect_radio = 16.0/9.0
var vid_length = 2.007
export (String, FILE, "*.tscn") var world_scene


func _ready():
	
	get_tree().set_pause(true)
	
	var vsize = get_viewport_rect().size
	
	get_parent().get_node("ColorRect").set_size(vsize)
	
	if vsize.y < vsize.x / aspect_radio:
		set_size(Vector2(vsize.y * aspect_radio, vsize.y))
		set_position(Vector2( (vsize.x - vsize.y * aspect_radio) / 2, 0))
	else:
		set_size(Vector2(vsize.x, vsize.x / aspect_radio))
		set_position(Vector2(0, (vsize.y - vsize.x / aspect_radio) / 2))
		
	set_process(true)
	
func _process(delta):
	if get_stream_position() >= vid_length:
		get_tree().set_pause(false)
		get_parent().queue_free()
		get_tree().change_scene(world_scene)
	

	pass