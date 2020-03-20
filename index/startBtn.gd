extends Button

func _ready() -> void:
	var window_size = OS.get_real_window_size()
	self.rect_position = Vector2(
		window_size.x * 0.5 - self.rect_size.x * 0.5,
		self.rect_position.y
	)

func _on_Start_pressed() -> void:
	globals.level = consts.LEVEL_ONE
	get_tree().change_scene(consts.LEVEL_ONE)