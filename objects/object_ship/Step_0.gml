if (keyboard_check(vk_left)) {
	image_angle += 5;
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05);
}

if (keyboard_check_pressed(vk_space)) {
	var inst_id = instance_create_layer(x,y, "Instances", object_bullet);
	inst_id.direction = image_angle
}

move_wrap(true, true, sprite_height/2);
