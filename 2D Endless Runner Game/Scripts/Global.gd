extends Node

var score = 0
var score_file = "user://highscore.save"
var best = 0

func load_score():
	var f = File.new()
	if f.file_exists(score_file):
		f.open(score_file, File.READ)
		best = f.get_var()
		f.close()
	else:
		best = 0

func save_score():
	var f = File.new()
	f.open(score_file, File.WRITE)
	f.store_var(best)
	f.close()
