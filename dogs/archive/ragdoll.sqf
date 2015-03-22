z75_RagdollEffect =
{
	private ["_unit", "_dir", "_unitPos", "_force", "_o", "_projPos"];
	
    _unit = _this select 0;
	
	if(!(_unit getVariable ["Zooloo75_Ragdolling", false])) then
	{	
		_unit getVariable ["Zooloo75_Ragdolling", true];
		
		_dir = _this select 1;
		_projPos = _this select 2;
		
		_unitPos = position _unit;
		_force = 500;

		_unit allowDamage false; 

		_o = "Steel_Plate_L_F" createVehicleLocal [0, 0, 0];
		_o setObjectTexture [0, ""];
		_o setMass _force;
		_o setDir _dir;
		_o setPosATL [(_unitPos select 0) + sin(_dir + 180), (_unitPos select 1) + cos(_dir + 180), ((((boundingBox _unit) select 1) select 2) / 2) - ((_projPos select 2) / 100)]; 
		_o setVelocity [(sin(_dir)) * 6, (cos(_dir)) * 6, 0]; 

		sleep 0.5;

		deleteVehicle _o;
		_unit allowDamage true; 
		
		_unit getVariable ["Zooloo75_Ragdolling", false];
	};
};

z75_IsBullet =
{
	private ["_projType", "_strArr", "_isBullet"];
	
	_projType = _this;
	_strArr = toArray _this;
	_isBullet = false;
	
	if(count _strArr > 0) then
	{
		if(_strArr select 0 == 98 || _strArr select 0 == 66) then
		{
			_isBullet = true;
		};
	};
	
	_isBullet
};

z75_HitPartHandling =
{
	private ["_data", "_unit", "_shooter", "_projPos", "_proj"];
	
    _data = _this select 0;
    _unit = _data select 0;
	_shooter = _data select 1;
	_proj = _data select 2;
	_projPos = _data select 3;
	
	if(alive _unit) then
	{	
		if(_unit == player) then
		{
			addCamShake [3, 5, 5 + random 10];
		};

		[_unit, direction _proj, _projPos] spawn z75_RagdollEffect;
	};
};

Zooloo75_Ragdoll_Ready = true;