function Sc_CreateMinimapObject(parentObject, mySprite, xScale, yScale){
	var justCreatedObject = instance_create_layer(0,0,"MinimapObjects",O_MinimapObjectInGameSprite);
	justCreatedObject.parentInGame = parentObject;
	justCreatedObject.minimapSprite = mySprite;
	justCreatedObject.scaleX = xScale;
	justCreatedObject.scaleY =yScale;
}