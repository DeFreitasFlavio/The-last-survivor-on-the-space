/// Variable ///

image_angle = point_direction(x,y,mouse_x,mouse_y);
move_speed = 5;
move_Max = 7.5;
dash = 50;

if(spd_bounce >= 0){
	speed = spd_bounce;
	spd_bounce = spd_bounce - 1;
}

/// Movement Clavier ///
if(keyboard_check_pressed(65)){
	 move_speed = move_speed + dash;
}

if(keyboard_check(vk_shift)){
	move_speed = move_Max;
}

if (keyboard_check(90)) {
	y = y - move_speed;
}
if (keyboard_check(83)) {
	y = y + move_speed;
}
if (keyboard_check(81)) {
	x = x - move_speed;
}
if (keyboard_check(68)) {
	x = x + move_speed;
}

// Movement Joystick //



// Tirs
	// Tirs Normal
if(mouse_check_button(mb_left)) && (keyboard_check(vk_shift)) && (cooldown < 1) {
	instance_create_layer(x, y, "LayerBullet", obj_bullet);
	cooldown = 10;
}

if(mouse_check_button(mb_left)) && (cooldown < 1) {
	instance_create_layer(x, y, "LayerBullet", obj_bullet);
	cooldown = 5;
}

	// Tirs Puissant
if(mouse_check_button(mb_right)) && (keyboard_check(vk_shift)) && (cooldown < 1) {
	instance_create_layer(x, y, "LayerBullet", obj_bulletpink);
	cooldown = 30;
}

if(mouse_check_button(mb_right)) && (cooldown < 1) {
	instance_create_layer(x, y, "LayerBullet", obj_bulletpink);
	cooldown = 20;
}
cooldown = cooldown - 1;

// Game Over

if(player_hp <= 0){
	instance_destroy(obj_player);
	room_goto(Dead);
}

// Song

if(music = false && instance_exists(obj_player)){
	music = true
	audio_play_sound(snd_background, 0, 0);
}

if(music = true && !instance_exists(obj_player)){
	audio_stop_sound(snd_background);	
}

