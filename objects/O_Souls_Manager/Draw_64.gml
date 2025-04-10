/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4F73478A
/// @DnDArgument : "obj" "O_Selector"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "O_Selector"
var l4F73478A_0 = false;l4F73478A_0 = instance_exists(O_Selector);if(!l4F73478A_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0B4D5CDA
	/// @DnDParent : 4F73478A
	/// @DnDArgument : "x" "50"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "sprite" "S_Soul"
	/// @DnDSaveInfo : "sprite" "S_Soul"
	draw_sprite(S_Soul, 0, 50, 50);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 6B157C26
	/// @DnDParent : 4F73478A
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 27E36926
	/// @DnDParent : 4F73478A
	/// @DnDArgument : "x" "82"
	/// @DnDArgument : "y" "50"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "global.soulCounter"
	draw_text(82, 50, string("") + string(global.soulCounter));}