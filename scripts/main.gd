extends Control

var global_notes:int = 0
var piano_notes:int = 0
var bass_notes:int = 0
var notes_per_click:int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	global_notes = 0
	piano_notes = 0
	bass_notes = 0
	notes_per_click = 1
	prints("notes = ", piano_notes)
	prints("notes per click = ", notes_per_click)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	global_notes = piano_notes + bass_notes
	$global_container/instrument_container/margin_note_counter/note_counter.text = str(global_notes)
	$global_container/instrument_container/margin_instrument/tab_instruments/piano/MarginContainer/VBoxContainer/global_piano/MarginContainer/piano_notes.text = str(piano_notes)
	$global_container/instrument_container/margin_instrument/tab_instruments/bass/MarginContainer/VBoxContainer/global_bass/MarginContainer/bass_notes.text = str(bass_notes)

"""
func _on_button_2_visibility_changed():
	if($Button2.visible == true):
		notes_per_click += 1
"""

func _on_piano_click_pressed():
	piano_notes += notes_per_click

func _on_bass_click_pressed():
	bass_notes += notes_per_click
