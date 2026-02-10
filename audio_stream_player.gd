extends Node
@onready var player = self

var playlist = [
	preload("res://music/115.mp3"),
	preload("res://music/APT.mp3"),
	preload("res://music/BringMeToLife.mp3"),
	preload("res://music/ChildrenOfTheGrave.mp3"),
	preload("res://music/EnterSandman.mp3"),
	preload("res://music/HailToTheKing.mp3"),
	preload("res://music/HeavenNHell.mp3"),
	preload("res://music/NoMoreTears.mp3"),
	preload("res://music/Paranoid.mp3"),
	preload("res://music/RosaPastel.mp3"),
	preload("res://music/Scourge of Iron.mp3"),
	preload("res://music/TheFourHorseman.mp3"),
	preload("res://music/TheOnlyThingToFearIsYou.mp3"),
	preload("res://music/WaitingForLove.mp3"),
	preload("res://music/WarPigs.mp3"),
	# agrega las 15
]

var index = 0

func _ready():
	randomize()
	player.finished.connect(_next_song)
	_play_current()

func _play_current():
	player.stream = playlist[index]
	player.play()

func _next_song():
	index += 1
	if index >= playlist.size():
		index = 0   # loop total
	_play_current()
