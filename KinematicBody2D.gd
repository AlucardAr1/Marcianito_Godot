extends KinematicBody2D

var door
var motion = Vector2()
var speed = 400
var jumpforce = 140
var cont = 0


func _ready():
	door = get_parent().get_node("Door")
	

func _physics_process(delta):

	#Gravedad
	motion.y += 9.8
	
	
	
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		motion.x = speed
		$Sprite.animation = "Caminar"
		$Sprite.flip_h = false
		$Sprite.offset.x = 0
		
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -speed
		$Sprite.animation = "Caminar"
		$Sprite.flip_h = true
		$Sprite.offset.x = 0
		
	else:
		$Sprite.animation = "Enfrente"
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -jumpforce*2
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
	else:
		if motion.y < 6:
			$Sprite.play("Saltar")
		else:
			$Sprite.play("Caer")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.5)
	
	motion = move_and_slide(motion, Vector2(0,-1))

func _on_Door_area_entered(area):
	print("El jugador entro al area")
	door.canGo = true
	pass # Replace with function body.


func _on_Door_area_exited(area):
	door.canGo = false
	get_parent().get_node("Door").canGo = false
	print("El jugador salio del area")
	pass # Replace with function body.
	

