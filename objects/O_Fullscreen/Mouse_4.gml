//Si déjà plein écran : petit écran et frame 0
if (window_get_fullscreen()){
	window_set_fullscreen(false);
}
//Si pas plein écran : plein écran et frame 1
else if (!window_get_fullscreen()){
	window_set_fullscreen(true);
}