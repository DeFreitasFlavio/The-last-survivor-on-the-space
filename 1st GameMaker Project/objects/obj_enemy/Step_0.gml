// Variables

// Mouvement
if(instance_exists(obj_player))
{
	move_towards_point(obj_player.x, obj_player.y, spd);
	image_angle = direction;
}

if(spd_bounce >= 0){
	speed = spd_bounce;
	spd_bounce = spd_bounce - 1;
}

// Kill enemy to gain a point

if(enemy_hp <= 0){
	with(obj_score){
		player_score = player_score + 100;	
	}
	instance_destroy();
}