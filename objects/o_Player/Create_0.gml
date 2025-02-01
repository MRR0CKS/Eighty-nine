
// States 
hpmax = 10
hp = hpmax
//  State machine
event_inherited();
//Movement
	xspd = 0
	yspd = 0
	Movespd = 2
//Sprite contorol
	Face = 3
	sprite[0]=Spr_StandingRight
	sprite[1]=Spr_StandingUp
	sprite[2]=Spr_StandingLeft
	sprite[3]=Spr_StandingDown
	image_speed = .3
//Aim
	CenterYoffset = 0 
	CenterY = 0
	aimDir = 0
// Restart 
ready_to_restart = false 
	