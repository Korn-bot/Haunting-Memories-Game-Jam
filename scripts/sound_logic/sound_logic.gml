function pick_random_talk_noise(_ammout_of_sounds,_sound_group_name){
	
	var sound = irandom_range(1,_ammout_of_sounds);
	
	return string(_sound_group_name)+string(sound)

	
}