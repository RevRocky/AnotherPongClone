extends Node

signal ball_collide

func broadcast_ball_collide():
	ball_collide.emit()
