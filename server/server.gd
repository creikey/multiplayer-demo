extends Node2D

func _ready():
	print("Starting server with ip `", IP.get_local_addresses()[1], "`")
	var peer = NetworkedMultiplayerENet.new()
	peer.create_server(333, 4)
	get_tree().set_network_peer(peer)
	get_tree().set_meta("network_peer", peer)