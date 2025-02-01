/// @description Insert description here
#region Enemies
enemy[0] = o_Enmy_Telephone

#endregion
timer = 0 ;
spawnTime = 6*60 ;
enemy_count = instance_number(enemy[0])
enemy_count_max = 10 
zone_count = instance_number(o_Enemy_spawn_zone) - 1;




//var character_inst = instance_create_layer(xx,yy,"Instances", o_Player)
