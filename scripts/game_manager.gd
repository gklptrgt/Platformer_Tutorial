extends Node

var coin_score = 0
var grape_score = 0

@onready var score_label: Label = $ScoreLabel

func add_point(type) -> void:
	if type == "coin":
		coin_score += 1
	if type == "grape":
		grape_score += 1
		
	score_label.text = "You Collected " + str(coin_score)  + " coins!!!\n anddd " + str(grape_score) + " grapes."
