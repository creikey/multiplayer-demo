extends Node2D

export (String) var server_scene_path
export (String) var game_scene_path

var cmd_args

func _ready():
	cmd_args = OS.get_cmdline_args()
	if(cmd_args.size() > 0):
		if(cmd_args[0] == "--serve" or cmd_args[0] == "-s"):
			# server argument given, so change scene to server scene
			get_tree().change_scene(server_scene_path)
		else:
			# argument given, but not recognized
			print("--Usage--")
			print("--serve / -s | start the server")
			print("[no args] | start the regular game")
			get_tree().quit()
	else:
		# no argument given, so change scene to game
		get_tree().change_scene(game_scene_path)