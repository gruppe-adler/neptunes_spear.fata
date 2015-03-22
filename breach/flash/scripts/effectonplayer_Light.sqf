private ["_unit", "_blur"];
_unit = _this select 0;



if (_unit == player) then {
	//playMusic "SUPER_flashbang_sound0";
	//sleep 0.01;				//play sound


	_blur = ppEffectCreate ["DynamicBlur", 500];
	_blur ppEffectForceInNVG true;
	_blur ppEffectEnable true;
	_blur ppEffectAdjust [1];
	_blur ppEffectCommit 0.01;

	
	0 fadeSound 0.25;
	sleep 1;

	_blur ppEffectAdjust [0];
	_blur ppEffectCommit 3;
	sleep 2;
	2 fadeSound 1;
	sleep 1;
	_blur ppEffectEnable false;
};