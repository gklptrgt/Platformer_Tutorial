extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	print("You died.")
	audio_stream_player_2d.play()
	Engine.time_scale = 0.5 # Slow down the game by half.
	body.get_node("CollisionShape2D").queue_free() # remove the collision of the player.
	timer.start() # Starts the timer.
	

func _on_timer_timeout() -> void:
	# runs when timer ends. Restart the scene.
	Engine.time_scale = 1.0 # Put game back to normal so its not slowed.
	get_tree().reload_current_scene()
