extends Button

func _on_retryBtn_pressed() -> void:
	if globals.level.empty():
		get_tree().change_scene(consts.LEVEL_INDEX)
	get_tree().change_scene(globals.level)

func _ready() -> void:
	var window_size = OS.get_real_window_size()
	self.rect_position = Vector2(
		window_size.x * 0.5 - self.rect_size.x * 0.5,
		self.rect_position.y
	)