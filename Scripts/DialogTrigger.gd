extends Area2D

var level = 0

func _ready():
	pass # Replace with function body.


func _on_DialogTrigger_area_entered(area):
	Global.just_loaded = false
	# world_gen level
	get_parent().get_parent().player_level = level + 1
	#TODO trigger dialog
	get_parent().get_parent().get_parent().get_node("Node2D").get_node("CanvasLayer2").get_node("Control").start("res://Dialog/level " + str(level) + ".json")
	#delete self after
	queue_free()
	pass # Replace with function body.