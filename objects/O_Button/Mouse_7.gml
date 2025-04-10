if (scriptToExecute != -4)
{
	if (self.buttonText == "Start")
	{
		self.buttonText = "Resume";
	}
	script_execute(scriptToExecute);
}