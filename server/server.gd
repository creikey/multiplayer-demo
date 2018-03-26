extends Node2D

func _ready():
	print("Starting server with ip `", IP.get_local_addresses()[1], "`")