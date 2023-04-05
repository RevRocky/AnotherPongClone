extends CharacterBody2D

class_name Paddle

@export var speed: int = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func getDirection():
	var direction: int
	if (Input.is_action_pressed("input_up")):
		direction = -1
	elif (Input.is_action_pressed("input_down")):
		direction = 1
	else: 
		direction = 0	# No input, dont move.
		
	return direction
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction: int = getDirection()
	
	# Update position based on direction + velocity and our time delta
	position += Vector2(0, direction * speed) * delta
