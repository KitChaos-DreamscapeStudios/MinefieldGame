extends Sprite2D
@export var tileIndicator : PackedScene
var Board : Array[Array]
func _onready() -> void:
	for x in range(10):
		Board.append([])
		for y in range(10):
			var newTile:Sprite2D =tileIndicator.instantiate()
			add_child(newTile)
			Board[x].append(newTile)
			newTile.z_index = 0
			newTile.position = Vector2(10*x,10*y)

	
