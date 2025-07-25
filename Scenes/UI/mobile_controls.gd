extends CanvasLayer

signal mobilePause

#@onready var mobileButtons = %TouchControls
#
#func _ready():
	#mobileButtons.hide()
	#EventsBus.mobileControls.connect(show_controls)
#
#
#func show_controls():
	#print("connected")
	#mobileButtons.show()
	#match mobileButtons.visible:
		#true:
			#mobileButtons.hide()
		#false:
			#mobileButtons.show()


func _on_touch_screen_button_pressed():
	mobilePause.emit()
