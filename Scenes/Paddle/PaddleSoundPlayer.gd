extends AudioStreamPlayer

func _ready():
	
	Broadcaster.ball_collide.connect(play)
	finished.connect(stop)
	

	
