extends Button

export (int) var difficulty = 1

func _pressed():
	Global.difficulty = difficulty
	Global.checkpoint = 1
	get_tree().change_scene("res://Scenes/Game.tscn")
