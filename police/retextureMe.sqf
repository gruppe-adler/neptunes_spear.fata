_veh = _this select 0;


if ( _veh == offroad1 ||
	_veh == offroad_search1) then {
   //merged from 2 scripts in by nomi
    _veh animate ["HidePolice", 0]; 
    _veh animate ["HideServices", 1]; 
    _veh animate ["HideBackpacks", 1]; 
    _veh animate ["HideBumper1", 1]; 
    _veh animate ["HideBumper2", 0]; 
    _veh animate ["HideConstruction", 0];

};

if (_veh == offroad1  || 
	_veh == offroad_search1) then {
	_veh setObjectTexture [0,'#(argb,512,512,1)color(0.0,0.0,0.1,1)'];
	_veh setObjectTexture [1, "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE02_CO.paa"]; 
	
};

if (typeOf _veh == "rhs_ural_chdkz" ) then {

	 _veh setObjectTexture [0,'#(argb,512,512,1)color(0.0,0.0,0.1,1)'];
	 //_veh setObjectTexture [1,'#(argb,512,512,1)color(0.0,0.0,0.1,1)'];
};