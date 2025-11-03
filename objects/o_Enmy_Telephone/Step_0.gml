/// @description Insert description here
// You can write your code in this editor
if (global.pause) exit ; 
switch (state) 
{ 
	case states.IDLE:
		calc_entity_movement() 
		enemy_anim()
		
		Check_for_player()
		if path_index !=-1 state = states.MOVE; 
	break; 
	case states.MOVE:
		calc_entity_movement() 
		enemy_anim() 
	
		faicing()
		Check_for_player()
		if path_index ==-1 state = states.IDLE; 
	break;
	case states.ATTACK:
		Check_for_player()
		calc_entity_movement()
		faicing()
		enemy_anim()
		attack() 
	break;
	case states.KNOCKBACK:
		calc_knockback_movement() 
		faicing()
		enemy_anim()
	break;
	case states.DEAD:
		calc_entity_movement()
	break;
} 
collision()

 