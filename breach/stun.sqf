/*
Taw_Jarhead
Breaching script v1
3/25/2014

	1. get all men around the player
	2. if AI then excute the stun
	3. if player do nothing


please note there is extra code in here that is necessary sense i took it strait from flashbang script
*/
if (isServer) exitWith {};
_position = _this select 0;



	_unit = player;
	_pos = eyepos player;
	__x = _pos select 0;
	__y = _pos select 1;
	__z = _pos select 2;
	//_pos2 = [__x,__y,__z+0.2];
	_pos2 =  getPos _position;
    _pos3 = ATLtoASL _pos2;

    _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
	_soundToPlay = _soundPath + "sounds\flashbang.ogg";

player allowDamage false;
//hintSilent format ["%1", _position];
	    
playSound3D [_soundToPlay, _position, false, getPosASL _position, 30, 1, 50];    


	

		_direye = eyeDirection player;
		_x0 = _direye select 0;
		_y0 = _direye select 1;
		_z0 = _direye select 2;
		_posflashx = __x-((getpos player) select 0);
		_posflashy = __y-((getpos player) select 1);
		_posflashz = __z-((getpos player) select 2);
		_Norm = Sqrt(_posflashx^2+_posflashy^2+_posflashz^2);
		_x1=_posflashx/_Norm;
		_y1=_posflashy/_Norm;
		_z1=_posflashz/_Norm;
		_cos = _x0*_x1+_y1*_y0+_z1*_z0;
		_angle = acos _cos;
		_d = player distance _pos2;

		if (_angle < 90) then
		{

		[_unit] execVM "breach\flash\scripts\effectonplayer_Full.sqf";
		//hintSilent "full effect";
		} else
		{
			[_unit] execVM "breach\flash\scripts\effectonplayer_Light.sqf";
			//hintSilent "half effect";
	     };


sleep 3;
player allowDamage true;