function damage_entity(_tid,_sid,_damage,_time){
//tid - target id
//sid - source id , whe the damage coming from
//damage how much damage
//time how long to knockback target

with(_tid){
	if alarm[HURT] > 0 or state == states.DEAD exit;  
	hp-= _damage
	var dead = is_dead() 
	path_end();
	//knockback distance 
	if dead var dis = 4 else dis = 3 
	var dir = point_direction(_sid.x,_sid.y,x,y);
	hsp += lengthdir_x(dis,dir)
	vsp += lengthdir_y(dis,dir)
	calc_path_delay = _time 
	alert = true
	knockback_time =  _time 
	alarm[HURT] = hurt_time ;  
	if !dead state = states.KNOCKBACK
	return dead 
}
}
function is_dead() { 
	//check is the instance running this is dead 
	if state != states.DEAD { 
		if hp <=0  { 
			state = states.DEAD
			hp = 0
			image_index = 0
			switch (object_index) {
				default : 
				// death sound
				break;
				case o_Player:
				//player death sound
				break;
				}	
			return true ; 
			}
		}  else return true 
	}
function collision() { 
	var tx = x
	var ty = y 
	
	x= xprevious
	y= yprevious
	
	var disx = abs(tx - x) ;
	var disy = abs(ty - y) ;
	
	repeat(disx) {
	if !place_meeting(x + sign(tx-x) ,y, o_FolderWall ){x += sign(tx-x) } else {x -= sign(tx-x) * 0.2}  }
	repeat(disy) {
	if !place_meeting(x ,y+ sign(ty-y) , o_FolderWall ){y += sign(ty-y) }else {y -= sign(ty-y)*0.2}}
}

