extends TileMap

func _ready():
	print("Hello")
	print(typeof(self.get_cell(1, 1)))

func _process(delta):
	print("Hello")

