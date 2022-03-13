if(musictitle = false){
	audio_play_sound(snd_title, 1, 0);
	musictitle = true
}

if(musicloop = false && audio_exists(snd_title)){
	audio_play_sound(snd_titleloop, 0, 0);
	musicloop = true;
}


image_alpha = min(image_alpha + 0.02,1);

if(keyboard_check(vk_enter)){
	room_goto(Debug_Room);
}