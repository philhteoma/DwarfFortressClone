extends TileMap

var c = 0
var store = 0

func _ready():
	print("Hello")
	for i in range(10):
		for n in range(10):
			print(i, "-", n, ":", self.get_cell(i,n))

func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton \
		and event.button_index == BUTTON_LEFT \
		and event.is_pressed():
			print(event.position)
			var i = (self.world_to_map(event.position))
			if i.y == 10:
				store = i.x
			elif i.y < 10:
				self.set_cell(i.x, i.y, store)
