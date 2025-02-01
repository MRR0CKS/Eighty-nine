if other.hp > 0 {
	damage_entity(other,owner_id,damage, knockback_time) 
}
particle_system = part_system_create_layer("Instances", 0)

particle_trail = part_type_create()

part_type_sprite(particle_trail, Spr_Damage,0,0,0 )

part_type_life(particle_trail,35,35)
part_type_alpha3(particle_trail,1,3,0)

alarm[2] = 5 
