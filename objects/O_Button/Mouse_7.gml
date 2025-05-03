if (scriptToExecute != -4)
{
	if (self.sprite_index == S_StartButton)
	{
		self.sprite_index = S_StartButton;
		global.nextRoom = R_Test;
	}
	script_execute(scriptToExecute);
}