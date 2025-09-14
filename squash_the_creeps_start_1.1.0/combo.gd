extends Label

var combo = 0
func _on_mob_squashed():
	show()
	$ComboTimer.start()
	combo += 1
	text = "X%s" % combo


func _on_combo_timer_timeout() -> void:
	hide()
	combo = 0
