/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11FC6B5F
/// @DnDArgument : "funcName" "sc_ReduceLife"
/// @DnDArgument : "arg" "amount"
function sc_ReduceLife(amount) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 486ADFB5
	/// @DnDParent : 11FC6B5F
	/// @DnDArgument : "var" "O_Life_Manager.isInvincible"
	/// @DnDArgument : "value" "false"
	if(O_Life_Manager.isInvincible == false){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65007383
		/// @DnDInput : 2
		/// @DnDParent : 486ADFB5
		/// @DnDArgument : "expr" "-amount"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "O_Life_Manager.playerLife"
		/// @DnDArgument : "var_1" "O_Life_Manager.isInvincible"
		O_Life_Manager.playerLife += -amount;
		O_Life_Manager.isInvincible = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 31E5619B
		/// @DnDApplyTo : {O_Life_Manager}
		/// @DnDParent : 486ADFB5
		with(O_Life_Manager) {
		alarm_set(0, 30);
		
		}}}