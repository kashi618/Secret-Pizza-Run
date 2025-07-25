extends Control


func _on_exit_pressed():
	get_tree().quit()


func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	


func _on_check_button_pressed():
	print("yes")
	match Global.mobileControlsVisible:
		true:
			Global.mobileControlsVisible = false
			print("false")
		false:
			Global.mobileControlsVisible = true
			print("true")
	#EventsBus.mobileControls.emit()
