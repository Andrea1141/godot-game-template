extends Label

func _ready():
	visible = false
	if not OS.is_debug_build():
		queue_free()
	text = ProjectSettings.get_setting("application/config/version")
	rect_position.y = Game.size.y - 50
	rect_position.x = 20

func _process(delta):
	if Input.is_action_just_pressed("debug_show"):
		visible = !visible
