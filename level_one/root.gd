extends Node2D

var started = false
var mouse_down = false

func _ready() -> void:
	globals.square.size = consts.ZERO
	globals.level = "res://level_one.tscn"
	set_process_input(true)

func _process(delta: float) -> void:
	if not started and mouse_down:
		started = true

	if started and not mouse_down:
		get_tree().change_scene("res://retrospective.tscn")

	update()

func _draw() -> void:
	if not mouse_down:
		return

	if globals.debug:
		draw_rect(
			Rect2(globals.square.position.x, globals.square.position.y, globals.square.size.x, globals.square.size.x),
			Color(255, 0, 0),
			true
		)
		draw_rect(
			Rect2(globals.square.position.x, globals.square.position.y, globals.square.size.y, globals.square.size.y),
			Color(0, 0, 255),
			true
		)

	draw_rect(globals.square, Color(0, 0, 0), true)

func _input(ev) -> void:
	if ev is InputEventMouseButton:
		mouse_down = ev.is_pressed()
		globals.square.position = ev.position

	if ev is InputEventMouseMotion and mouse_down:
		globals.square.size.x = ev.position.x - globals.square.position.x
		globals.square.size.y = ev.position.y - globals.square.position.y