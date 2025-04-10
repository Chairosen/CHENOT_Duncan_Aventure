/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 535A6A4D
/// @DnDArgument : "obj" "O_Selector"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "O_Selector"
var l535A6A4D_0 = false;l535A6A4D_0 = instance_exists(O_Selector);if(!l535A6A4D_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 41D07A2D
	/// @DnDParent : 535A6A4D
	/// @DnDArgument : "sprite" "S_Heart"
	/// @DnDArgument : "number" "global.playerLife"
	/// @DnDSaveInfo : "sprite" "S_Heart"
	var l41D07A2D_0 = sprite_get_width(S_Heart);var l41D07A2D_1 = 0;for(var l41D07A2D_2 = global.playerLife; l41D07A2D_2 > 0; --l41D07A2D_2) {	draw_sprite(S_Heart, 0, 0 + l41D07A2D_1, 0);	l41D07A2D_1 += l41D07A2D_0;}}