if (global.pause) {image_index = 0  exit}; 
//move_and_collide(xspd * Movespd,yspd * Movespd, o_FolderWall) 	
//State machine 
switch (state) { 
		default:
	reset_vars()
	get_input()
	calc_movement()
	collision()
		break; 
		case states.KNOCKBACK:
	reset_vars()
	collision()
	calc_movement()
	if knockback_time -- <= 0 state = states.IDLE
		break 
	case states.DEAD:
	reset_vars()
	collision()
	calc_movement()
	if ready_to_restart and keyboard_check_pressed(ord("R")) game_restart(); 
		break; 
}

#region sprite control
mask_index = sprite[3]
sprite_index = sprite[Face]

if xspd == 0 && yspd == 0 {
	image_index = 0
}
	//aim 
	CenterY = y + CenterYoffset
	
	aimDir = point_direction(x,CenterY,mouse_x,mouse_y)
	Face = round(aimDir/90)
	if Face == 4 {Face = 0}
	// death 
	if hp <=  0 {
		image_blend = c_red} 
		#endregion
		
