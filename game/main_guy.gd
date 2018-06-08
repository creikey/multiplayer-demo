extends KinematicBody2D

func _ready():
	var peer = NetworkedMultiplayerENet.new()
	peer.create_client("127.0.0.1", 3333)
	get_tree().set_network_peer(peer)
	get_tree().set_meta("network_peer", peer)
	peer.connect("peer_connected", self, "on_new_connection")
	peer.connect("conection_failed", self, "on_connect_fail")

func on_new_connection(id):
	print("New peer connected: ", id)

func on_connect_fail():
	print("Connection failed!")