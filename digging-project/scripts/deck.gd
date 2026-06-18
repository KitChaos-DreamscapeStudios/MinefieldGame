extends Node
var Deck : Array[PackedScene]
@export var AllCards : Array[PackedScene]
var Hand : Array[Node2D]

class DeckEntry:
	var Next : DeckEntry
	var MyCard : PackedScene
	func _init(p:PackedScene) -> void:
		MyCard = p
		
	
		
	
	
func _ready() -> void:
	Deck.append(AllCards[0])
	Deck.append(AllCards[1])
func draw_top() -> void:
	var newCard = Deck[0].instantiate()
	get_parent().add_child(newCard)
	Deck.remove_at(0) 
	Hand.append(newCard) 
	

func regulate_hand() -> void:
	var ticker = 1
	for i in Hand:
		i.position = lerp(i.position, Vector2(30+(115*ticker),125),0.15)
		ticker += 1
func _process(delta: float) -> void:
	regulate_hand()
	if Input.is_action_just_pressed("ui_accept"):
		draw_top()
