_unit = _this select 0;

_knockoutEventhandler = [_unit, "knockedOut", 
	{
		//["you are knocked out"] call AGM_Core_fnc_displayTextStructured;
		[[[_this select 0],"half_spectator\half_spectate.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		
	}] call AGM_Core_fnc_addCustomEventHandler;