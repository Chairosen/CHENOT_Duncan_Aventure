/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11FC6B5F
/// @DnDArgument : "funcName" "sc_ReduceLife"
/// @DnDArgument : "arg" "amount"
function sc_ReduceLife(amount) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 486ADFB5
	/// @DnDParent : 11FC6B5F
	/// @DnDArgument : "var" "global.isInvincible"
	/// @DnDArgument : "value" "false"
	if(global.isInvincible == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65007383
		/// @DnDInput : 2
		/// @DnDParent : 486ADFB5
		/// @DnDArgument : "expr" "-amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "global.playerLife"
		/// @DnDArgument : "var_1" "global.isInvincible"
		global.playerLife += -amount;
		global.isInvincible = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 31E5619B
		/// @DnDApplyTo : {O_Life_Manager}
		/// @DnDParent : 486ADFB5
		with(O_Life_Manager) {
		alarm_set(0, 30);
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D29DE3A
		/// @DnDParent : 486ADFB5
		/// @DnDArgument : "expr" "c_red"
		/// @DnDArgument : "var" "O_Player.image_blend"
		O_Player.image_blend = c_red;}}