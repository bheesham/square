extends Node

var debug: bool = true
var level: String = consts.LEVEL_INDEX
var square: Rect2 = Rect2(0, 0, 0, 0)

func accuracy() -> float:
	return 0.00