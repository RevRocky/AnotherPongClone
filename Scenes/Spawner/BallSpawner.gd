extends Node

var ball_scene = preload("res://Scenes/Ball/Ball.tscn")
@export var respawn_time : float = 0.25
var ball 

# Called when the node enters the scene tree for the first time.
func _ready():
	ball = ball_scene.instantiate()
	ball.spawn(Vector2(-1, 0.65)); # TODO: Change the vector
	get_tree().root.add_child.call_deferred(ball)	
		
	ball.find_child("Visible*").ball_delete.connect(reset_ball)
	
func reset_ball():
	await get_tree().create_timer(respawn_time).timeout
	ball.spawn(Vector2(-1, 0.75))
