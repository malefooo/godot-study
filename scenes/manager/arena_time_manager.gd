extends Node

@onready var timer = $Timer

func get_time_elapased():
	return timer.wait_time - timer.time_left
	
