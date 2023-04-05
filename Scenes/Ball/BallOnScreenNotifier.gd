extends VisibleOnScreenNotifier2D


signal ball_delete

# Deletes the ball if it goes off frame
func _process(_delta):
	if (!is_on_screen()):
		ball_delete.emit()
		
