extends TextureButton
@onready var menu: Node2D = $".."


func _on_button_down() -> void:
	get_tree().call_group("Blocks","delete")
	menu.delete()
