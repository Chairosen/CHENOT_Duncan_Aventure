function Sc_CreateMinimapObject(parentObject, mySprite){
	if (global.nextRoom != R_Boss && global.nextRoom != R_)
	{
		var justCreatedObject = instance_create_layer(0,0,"MinimapObjects",O_MinimapObjectInGameSprite);
		justCreatedObject.parentInGame = parentObject;
		justCreatedObject.minimapSprite = mySprite;
	}
}