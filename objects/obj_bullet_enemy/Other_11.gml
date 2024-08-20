/// @description Reflect event

var _new_bullet = instance_create_layer(x, y, "Bullets", obj_bullet_friendly);
_new_bullet.bullet_speed = -bullet_speed;
_new_bullet.speed = -speed;
_new_bullet.image_angle = -image_angle

instance_destroy();
