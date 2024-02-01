extends State

func state_enter() -> void:
	#game setup...
	change_state.emit("State_Active")
	pass

func state_exit() -> void:
	pass
