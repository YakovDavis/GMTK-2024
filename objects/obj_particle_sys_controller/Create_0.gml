/// @description Insert description here
// You can write your code in this editor

ps_fire_blast = part_system_create();
part_system_depth(ps_fire_blast,0);

//move default  position from 0 0 to x y
//part_system_position(ind, x, y);

//fire
first_particle = part_type_create();
part_type_shape(first_particle,pt_shape_explosion);
part_type_scale(first_particle,2,2);
part_type_size(first_particle,0.15,0.20,-.001,0);
part_type_color2(first_particle,255,65535);
part_type_alpha2(first_particle,1,0.75);
part_type_speed(first_particle,0.1,0.5,0,0);
part_type_direction(first_particle,0,359,0,0);
//part_type_gravity(first_particle,0.02,90);
part_type_orientation(first_particle,0,359,15,0,true);
part_type_life(first_particle,100,150);
part_type_blend(first_particle,true);


//metal
metal_particle = part_type_create();
part_type_shape(metal_particle,pt_shape_disk);
part_type_size(metal_particle,0.20,0.20,-.001,0);
part_type_scale(metal_particle,1.5,1.5);

part_type_color1(metal_particle,8421504);
//part_type_alpha2(metal_particle,1,0.75);
part_type_speed(metal_particle,0.3,0.5,0,0);
part_type_direction(metal_particle,0,359,0,0);

part_type_gravity(metal_particle,0.25,230);

part_type_orientation(metal_particle,0,359,15,0,true);
part_type_life(metal_particle,100,150);
//part_type_blend(metal_particle,true);


//metal after fire
part_type_death(first_particle,1,metal_particle);


//emitter
first_emitter = part_emitter_create(ps_fire_blast);
part_emitter_region(ps_fire_blast, first_emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);
//part_emitter_stream(ps_fire_blast,first_emitter,first_particle,1);
part_emitter_burst(ps_fire_blast,first_emitter,first_particle,40);

//part_particles_clear(ps_fire_blast);