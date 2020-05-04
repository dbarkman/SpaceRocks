lives -= 1;
score += 10;

instance_destroy()

repeat(10) {
	instance_create_layer(x,y, "Instances", object_debris);
}

with(other) {
	instance_destroy();
	
	if (sprite_index == sprite_large_asteroid) {
		repeat(2) {
		var new_asteroid = instance_create_layer(x,y, "Instances", object_asteroid);
		new_asteroid.sprite_index = sprite_medium_asteroid;
		}
	} else if (sprite_index == sprite_medium_asteroid) {
		repeat(2) {
		var new_asteroid = instance_create_layer(x,y, "Instances", object_asteroid);
		new_asteroid.sprite_index = sprite_small_asteroid;
		}
	}
	
	repeat(10) {
		instance_create_layer(x,y, "Instances", object_debris);
	}
}

instance_create_layer(room_width / 2, room_height / 2, "Instances", object_ship);
