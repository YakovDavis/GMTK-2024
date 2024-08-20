
/// @description Insert description here
// You can write your code in this editor

var _ps_fire_blast = part_system_create();
part_system_depth(_ps_fire_blast,0);

//move default  position from 0 0 to x y
//part_system_position(ind, x, y);

//fire
var _first_particle = part_type_create();
part_type_shape(_first_particle,pt_shape_explosion);
part_type_scale(_first_particle,2,2);
part_type_size(_first_particle,0.15,0.20,-.001,0);
part_type_color2(_first_particle,255,65535);
part_type_alpha2(_first_particle,1,0.75);
part_type_speed(_first_particle,0.1,0.5,0,0);
part_type_direction(_first_particle,0,359,0,0);
//part_type_gravity(_first_particle,0.02,90);
part_type_orientation(_first_particle,0,359,15,0,true);
part_type_life(_first_particle,100,150);
part_type_blend(_first_particle,true);

//emitter
var _first_emitter = part_emitter_create(_ps_fire_blast);
part_emitter_region(_ps_fire_blast, _first_emitter, x-20, x+20, y-20, y+20, ps_shape_ellipse, ps_distr_gaussian);
//part_emitter_stream(_ps_fire_blast, _first_emitter, _first_particle,1);
part_emitter_burst(_ps_fire_blast, _first_emitter, _first_particle,40);

//part_particles_clear(_ps_fire_blast);

alarm[0] = 5000;
