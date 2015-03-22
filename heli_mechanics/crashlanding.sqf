// crash it for real
_heli  = _this select 0;

if (!isServer) exitWith {};
// create thick black smoke - klappt
_smoke = "test_EmptyObjectForSmoke" createVehicle position _heli;
_smoke attachTo [_heli ,[0,-6.5,2]];

if (_heli == ghosthawk1) then {
	[[[ghosthawk1],"breach\breach5.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
HELI_CRASH = 1;
ghosthawk1 addeventhandler ["handleDamage",{

    _ammo = _this select 4;
           
                 if (_ammo != "SLAMDirectionalMine_Wire_Ammo") then {
                _damage = 1;
              
                };  
           
        _damage
}];
};
if (_heli == ghosthawk2) then {
	[[[ghosthawk2],"breach\breach5.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
HELI_CRASH = 2;
ghosthawk2 addeventhandler ["handleDamage",{

    _ammo = _this select 4;
           
                 if (_ammo != "SLAMDirectionalMine_Wire_Ammo") then {
                _damage = 1;
              
                };  
           
        _damage
}];
};
if (_heli == chinook) then {
HELI_CRASH = 3;
[[[chinook],"breach\breach5.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
chinook addeventhandler ["handleDamage",{

    _ammo = _this select 4;
           
                 if (_ammo != "SLAMDirectionalMine_Wire_Ammo") then {
                _damage = 1;
              
                };  
           
        _damage
}];
};

publicVariable "HELI_CRASH";


