extends Control

var notes:int = 0
var notes_per_click:float = 1.0

# Called when the node enters the scene tree for the first time.
func _ready():
	prints("notes = ", notes)
	prints("notes per click = ", notes_per_click)
	$Button2.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(notes)
	
	if(notes >= 10):
		$Button2.visible = true

func _on_button_pressed():
	notes += notes_per_click

func _on_button_2_visibility_changed():
	notes_per_click += 1
