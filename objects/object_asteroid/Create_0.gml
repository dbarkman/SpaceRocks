sprite_index = choose(
	sprite_small_asteroid,
	sprite_medium_asteroid,
	sprite_large_asteroid	
);

sprite_index = sprite_large_asteroid;

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;
