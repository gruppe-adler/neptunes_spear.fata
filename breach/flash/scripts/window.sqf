private ["_pos", "_objects","_Nwindows","_i"];

_pos = _this select 0;
_objects = nearestObjects [_pos, ["house"], 15];

{
_Nwindows = [_x] call SUPER_fnc_NumberWindows;


	for [{_i = 0},{_i < _Nwindows},{_i = _i + 1}] do
		{

			_x setHit ["Glass_"+format["%1",_i+1], 1];
			_i = _i + 1;
	    };
} count _objects;
/*{
	_x setHit ["Glass_1", 1];
	_x setHit ["Glass_2", 1];
	_x setHit ["Glass_3", 1];
	_x setHit ["Glass_4", 1];
	_x setHit ["Glass_5", 1];
	_x setHit ["Glass_6", 1];
	_x setHit ["Glass_7", 1];
	_x setHit ["Glass_8", 1];
	_x setHit ["Glass_10", 1];
	_x setHit ["Glass_11", 1];
	_x setHit ["Glass_12", 1];
	_x setHit ["Glass_13", 1];
	_x setHit ["Glass_14", 1];
} count _objects;*/