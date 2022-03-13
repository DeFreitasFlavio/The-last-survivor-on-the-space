with(other){
	enemy_hp = enemy_hp - 1;
	audio_sound_pitch(snd_death, random_range(0.9,1.1));
	audio_play_sound(snd_death, 0, 0);
}
instance_destroy();