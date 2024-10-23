function player_movment(){
	
	if(keyboard_check(ord("W"))){
		self.y -= self._speed;
	}
	if(keyboard_check(ord("S"))){
		self.y += self._speed;
	}
	if(keyboard_check(ord("A"))){
		self.x -= self._speed;
	}
	if(keyboard_check(ord("D"))){
		self.x += self._speed;
	}
	player_sprint();
}

function player_sprint(){
	if(keyboard_check_pressed(ord("K"))){
		self._speed = 20;
	}

}

function player_interact(){
	if(keyboard_check_pressed(ord("J"))){
		return true;
	}
}
