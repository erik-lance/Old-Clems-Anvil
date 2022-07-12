extends Node


onready var blade = $Blade

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func prep_blade(l=1, q=true):
	l -= 1
	for i in l:
		blade.add_segment()
	
	if (q): blade.quench()

