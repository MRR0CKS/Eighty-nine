function enemy_anim() { 
switch (state) 
{ 
	case states.IDLE:
		image_angle = 0
	show_hurt()
	var scale_spd = 0.001
		if (increasing){
    image_xscale += scale_spd;
    image_yscale += scale_spd;
    if (image_xscale > 0.4 || image_yscale > 0.4)
    { increasing = false; } } 
	else
	{ image_xscale -= scale_spd;
      image_yscale -= scale_spd;
    if (image_xscale < 0.3 || image_yscale < 0.3)
    { increasing = true;  } }
		break
	case states.MOVE:
	image_xscale = 0.4
	image_yscale = 0.4
	show_hurt()
		swing_spd = random_range(0.5,1)
randomize()
			if (swinging){
    image_angle += swing_spd;
    if (image_angle > 15 )
    { swinging = false; } } 
	else
	{ image_angle -= swing_spd;
    if (image_angle < 0)
    { swinging = true;  } }
		//Face player 
var playerExists = instance_exists(o_Player); // replace with actual player object name

if(playerExists) {
    if(o_Player.x < x) {

        image_xscale = 0.4

    } else if(o_Player.x > x) {

         image_xscale = -0.4
    }
}	
		break
	case states.ATTACK:
	image_xscale = 0.4
	image_yscale = 0.4
	image_angle = 0
		break
	case states.KNOCKBACK:
		image_xscale = 0.4
		image_yscale = 0.4
		image_angle = 0
		show_hurt()
		break
	case states.DEAD:
	
		break
}
//depth
depth = -bbox_bottom
//update position 
xp=x
yp=y 
}
function Check_for_player(){
	
	if o_Player.state == states.DEAD exit; 
	
	var dist = distance_to_object(o_Player)

//check chase
if ((dist <= alert_dist) or alert) and dist > attack_dist {
alert = true	
if calc_path_timer-- <=0 { 
	calc_path_timer = calc_path_delay
	// stuck fix
	if x==xp and y == yp var type = 0 else var type = 1
	//path 
	var Found_player = mp_grid_path(global.mp_grid, path, x , y, o_Player.x,o_Player.y, type)
	if Found_player {
	path_start(path,spd, path_action_stop, false)}
	}
	}else {
		//close to player
		if dist <= attack_dist { 
			path_end()
			state = states.ATTACK} 	
	} 
}
function check_if_stopped() {
if abs(hsp) < 0.1 hsp = 0 	
if abs(vsp) < 0.1 vsp = 0 	
}
function calc_entity_movement() {
	//apply
x += hsp
y += vsp 
//slowdown
hsp*=global.drag
vsp*=global.drag
check_if_stopped(); 
}
function show_hurt(){
if knockback_time -- > 0 {image_blend = c_red}
else {image_blend= c_white}; 
}
function calc_knockback_movement(){
	x += hsp
	y += vsp 
	
	hsp *= 0.91
	vsp *= 0.91 
	
	check_if_stopped()
	
	if knockback_time <= 0 state = states.IDLE
}
function attack() {
	//attack sprite
	//image_index >= attack_frame and↓↓↓↓↓↓↓↓↓↓↓↓
if  image_index >= attack_frame and can_attack  {
	can_attack = false 
	alarm[0] = attack_cooldown 
	//attack direction 
	var dir = point_direction(x,y,o_Player.x,o_Player.y)
	//attack position
	var xx = x + lengthdir_x(attack_dist, dir)
	var yy = y + lengthdir_y(attack_dist, dir)
	//create hitbox 
	var inst = instance_create_layer(xx,yy,"Instances", o_enemy_hitbox)
	inst.owner_id = id
	inst.damage = damage 
	inst.knockback_time = knockback_time
} else { path_end() state = states.IDLE}
}
function faicing() {
	var target_direction = point_direction(x,y, o_Player.x, o_Player.y);
if (target_direction < 90 || target_direction > 270){ //facing right
    image_xscale = -0.4;
}
else{
    image_xscale = 0.4;
}
}