extends Node
var First:DeckEntry
@export var Card1 : PackedScene
@export var Card2 : PackedScene


class DeckEntry:
	var Next : DeckEntry
	var MyCard : PackedScene
	func _init(p:PackedScene) -> void:
		MyCard = p
		
	
		
	
	
func _ready() -> void:
	First = DeckEntry.new(Card1)
	First.Next = DeckEntry.new(Card2)
func draw_top() -> void:
	First.MyCard.instantiate()
	First = First.Next
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		print
		draw_top()
	
	
	
	

	
	
	
