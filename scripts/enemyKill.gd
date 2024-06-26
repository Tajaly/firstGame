extends CollisionShape2D

@onready var timer = $"../Timer"

func _on_enemy_kill_body_entered(body):
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	print("you died")
	get_tree().reload_current_scene()
