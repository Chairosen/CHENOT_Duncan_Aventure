/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0B4D5CDA
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "sprite" "S_Soul"
/// @DnDSaveInfo : "sprite" "S_Soul"
draw_sprite(S_Soul, 0, 50, 50);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 3F43E2E6
/// @DnDArgument : "x" "82"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" "counter"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;draw_text(82, 50, string(counter) + string(__dnd_score));