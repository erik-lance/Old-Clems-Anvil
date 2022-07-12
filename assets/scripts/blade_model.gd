extends Node

onready var butt = $Butt
onready var segments = $Segments
onready var tip = $Tip

var blade_segments = 1
var quenched = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# This will add another blade segment onto the blade
func add_segment():
	blade_segments += 1
	
	var s = Image.new()
	s.load("res://assets/sprites/sword segments/unquenched_segment.png")
	var t = ImageTexture.new()
	t.create_from_image(s)
	
	var rect = TextureRect.new()
	rect.texture = t
	
	segments.add_child(rect)

# This will change the sprites to be quenched
func quench():
	var but = Image.new()
	var seg = Image.new()
	var tip = Image.new()
	
	but.load("res://assets/sprites/sword segments/quenched_hilt.png")
	seg.load("res://assets/sprites/sword segments/quenched_segment.png")
	tip.load("res://assets/sprites/sword segments/quenched_tip.png")
	
	var but_t = ImageTexture.new()
	but_t.create_from_image(but, 2)
	
	var seg_t = ImageTexture.new()
	seg_t.create_from_image(seg, 2)
	
	var tip_t = ImageTexture.new()
	tip_t.create_from_image(tip, 2)
	
	$Butt.texture = but_t
	
	for s in segments.get_children():
		s.texture = seg_t
	
	$Tip.texture = tip_t
	
	pass
