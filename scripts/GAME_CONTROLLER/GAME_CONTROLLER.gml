function GAME_STATE() constructor{

	
	// all menu options
	MAIN_MENU = "MAIN_MENU";
	MAIN_MENU_OPTIONS = "MAIN_MENU_OPTIONS";
	MAIN_MENU_RULES = "MAIN_MENU_RULES";
	
	GAME_PLAYING = "GAME_PLAYING";
	GAME_TEXT_DISPLAY = "GAME_TEXT_DISPLAY";
	GAME_CUTSCENE = "GAME_CUTSCENE";
	GAME_OPTIONS = "GAME_OPTIONS";
}


function GAME_CONTROLER_SWITCH_STATE_SPECIFIC(_state){
	global.game_state = _state;
}

function get_GAME_STATE(){
	return global.game_state;
}

function GAME_CONTROLER_SWITCH_STATE_MAIN_MENU(){
	global.game_state = global.GAME_STATE_MACHINE.MAIN_MENU;
}

function GAME_CONTROLER_SWITCH_STATE_MAIN_MENU_OPTIONS(){
	global.game_state = global.GAME_STATE_MACHINE.MAIN_MENU_OPTIONS;
}

function GAME_CONTROLER_SWITCH_STATE_MAIN_MENU_RULES(){
	global.game_state = global.GAME_STATE_MACHINE.MAIN_MENU_RULES;
}

function GAME_CONTROLER_SWITCH_STATE_GAME_PLAYING(){
	global.game_state = global.GAME_STATE_MACHINE.GAME_PLAYING;
}

function GAME_CONTROLER_SWITCH_STATE_GAME_TEXT_DISPLAY(){
	global.game_state = global.GAME_STATE_MACHINE.GAME_TEXT_DISPLAY;
}

function GAME_CONTROLER_SWITCH_STATE_GAME_CUTSCENE(){
	global.game_state = global.GAME_STATE_MACHINE.GAME_CUTSCENE;
}
function GAME_CONTROLER_SWITCH_STATE_GAME_OPTIONS(){
	global.game_state = global.GAME_STATE_MACHINE.GAME_OPTIONS;
}


