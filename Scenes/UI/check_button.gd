extends CheckButton


@onready var checkButton = $"."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.mobileControlsVisible == true:
		checkButton.button_pressed = true
	else:
		checkButton.button_pressed = false
