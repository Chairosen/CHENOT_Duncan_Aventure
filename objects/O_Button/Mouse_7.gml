if (scriptToExecute != -4)
{
	if (self.buttonText == "Start")
	{
		self.buttonText = "Resume";
		global.nextRoom = R_Test;
	}
	script_execute(scriptToExecute);
}