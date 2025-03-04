/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 41D07A2D
/// @DnDArgument : "sprite" "S_Heart"
/// @DnDArgument : "number" "playerLife"
/// @DnDSaveInfo : "sprite" "S_Heart"
var l41D07A2D_0 = sprite_get_width(S_Heart);var l41D07A2D_1 = 0;for(var l41D07A2D_2 = playerLife; l41D07A2D_2 > 0; --l41D07A2D_2) {	draw_sprite(S_Heart, 0, 0 + l41D07A2D_1, 0);	l41D07A2D_1 += l41D07A2D_0;}