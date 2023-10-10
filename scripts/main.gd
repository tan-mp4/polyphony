extends Control

var notes:int = 0
var notes_per_click:int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	notes = 0
	notes_per_click = 1
	prints("notes = ", notes)
	prints("notes per click = ", notes_per_click)
	$Button2.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$notes_counter.text = str(notes)
	
	if(notes >= 10):
		$Button2.visible = true

func _on_button_pressed():
	notes += notes_per_click

func _on_button_2_visibility_changed():
	if($Button2.visible == true):
		notes_per_click += 1
