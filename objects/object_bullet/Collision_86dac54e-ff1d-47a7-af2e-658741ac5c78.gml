instance_destroy()

with(other) {
	instance_destroy();
	
	if (sprite_index == sprite_large_asteroid) {
		score += 10;
		repeat(2) {
		var new_asteroid = instance_create_layer(x,y, "Instances", object_asteroid);
		new_asteroid.sprite_index = sprite_medium_asteroid;
		}
	} else if (sprite_index == sprite_medium_asteroid) {
		score += 25;
		repeat(2) {
		var new_asteroid = instance_create_layer(x,y, "Instances", object_asteroid);
		new_asteroid.sprite_index = sprite_small_asteroid;
		}
	} else {
		score += 50;
	}
	
	repeat(10) {
		instance_create_layer(x,y, "Instances", object_debris);
	}
}
