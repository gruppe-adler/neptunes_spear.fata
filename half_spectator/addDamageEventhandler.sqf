_object = _this select 0;


_object addEventHandler ["handleDamage",
{
	_damage = _this select 2;
	if (_this select 4 == "SLAMDirectionalMine_Wire_Ammo") then {
		_damage = 0;
	};
	
	_damage
}];