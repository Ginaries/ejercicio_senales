extends RigidBody2D

func delete():
	get_tree().queue_delete(self)
