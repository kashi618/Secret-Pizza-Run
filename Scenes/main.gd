extends Node

@export var Maps: Array[MapData]
@onready var mobileButtons = %TouchControls

@onready var current_map: Node2D = $current_map
var Map_ID = 1
func _ready():
	mobileButtons.visible = false
	EventsBus.go_next_map.connect(_on_go_next_map)
	#EventsBus.mobileControls.connect(show_controls)
	MapManager.main_scene = current_map
	MapManager.maps = Maps
	
	MapManager.load_map(Map_ID)
	
	Map_ID +=1
	await get_tree().create_timer(1).timeout

func _on_go_next_map():
	MapManager.load_map(Map_ID)
	
	Map_ID +=1

func _process(delta):
	if Global.mobileControlsVisible == true:
		mobileButtons.visible = true
	else:
		mobileButtons.visible = false
