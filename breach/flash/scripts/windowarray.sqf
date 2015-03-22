private["_object","_i"];
_object = _this select 0;

_i = 0;
while {isclass (configFile >> "CfgVehicles">>typeOf _object>> "HitPoints">>"Glass_"+format["%1",_i+1]+"_hitpoint" )} do
	{
	_i=_i+1;
	};

_i