extends KinematicBody2D

var motion = Vector2()
var speed = 400
var jumpforce = 175



func _physics_process(delta):

	#Gravedad
	motion.y += 9.8
	
	var friction = false
	
	if Input.is_action_pressed("ui_right2"):
		motion.x = speed
		$Sprite.animation = "Caminar"
		$Sprite.flip_h = false
		$Sprite.offset.x = 0
		
		
	elif Input.is_action_pressed("ui_left2"):
		motion.x = -speed
		$Sprite.animation = "Caminar"
		$Sprite.flip_h = true
		$Sprite.offset.x = 0
		
	else:
		$Sprite.animation = "Enfrente"
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up2"):
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