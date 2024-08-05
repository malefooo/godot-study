extends CanvasLayer


@export var arene_time_manager: Node
@onready var label = $%Label


func _process(delta):
	if arene_time_manager == null:
		return
	var time_elapsed = arene_time_manager.get_time_elapased()
	label.text = format_seconds_to_string(time_elapsed)


func format_seconds_to_string(seconds: float):
	var minutes = floor(seconds / 60)
	var remaining_seconds = seconds - (minutes * 60)
	return str(minutes) + ":" + ("%02d" % floor(remaining_seconds))
