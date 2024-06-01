extends CollisionShape2D


@onready var timer = $"../Timer"

func _on_area_2d_body_entered(body):
	
	timer.start()
	


func _on_timer_timeout():
	print("you died")
	get_tree().reload_current_scene()
