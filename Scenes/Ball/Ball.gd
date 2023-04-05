extends CharacterBody2D

class_name Ball
signal ball_collide

@export var speed : int = 500
@export var spawn_position : Vector2 = Vector2(550, 400) # TODO Should be dependant on screensize no ?

# Spawns the ball sending it toward a specific player as specified by the
# vector2 for the intitial direction
func spawn(initial_direction: Vector2):
	position = spawn_position
	velocity = initial_direction * speed

func _physics_process(delta):
	var collision : KinematicCollision2D = move_and_collide(velocity * delta)
	if (collision):
		velocity = velocity.bounce(collision.get_normal())
		Broadcaster.broadcast_ball_collide()
