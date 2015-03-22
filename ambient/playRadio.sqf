_radio = _this select 0;



[_radio] spawn {

_obj = _this select 0;

_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "sounds\radio.ogg";

while {alive _obj} do {    

	    
	playSound3D [_soundToPlay, _obj, false, getPosASL _obj, 30, 1, 100];    
	sleep 250;   
};
};