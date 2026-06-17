extends Node
var First:DeckEntry
@export var AllCards : Array[PackedScene]


class DeckEntry:
	var Next : DeckEntry
	var MyCard : PackedScene
	func _init(p:PackedScene) -> void:
		MyCard = p
		
	
		
	
	
func _ready() -> void:
	First = DeckEntry.new(AllCards[0])
	First.Next = DeckEntry.new(AllCards[1])
func draw_top() -> void:
	var newCard = First.MyCard.instantiate()
	add_child(newCard)
	First = First.Next
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		print
		draw_top()
	
	
	
	

	
	
	
