extends TileMap

var c = 0

func _ready():
	print("Hello")
	for i in range(10):
		for n in range(10):
			print(i, "-", n, ":", self.get_cell(i,n))

func _process(delta):
	c += delta * 5
	if c >= 60:
		c = 0
	set_cell(1, 1, int(c))

func _input(event):
	if event is InputEventMouseButton \
		and event.button_index == BUTTON_LEFT \
		and event.is_pressed():
		  print(event.position)
		  var i = (self.world_to_map(event.position))
		  print(i)
		  set_cell(i.x, i.y, get_cell(i.x, i.y)+1)
