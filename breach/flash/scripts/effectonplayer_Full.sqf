private ["_unit"];
_unit = _this select 0;


if (_unit == player) then {
	//playMusic "SUPER_flashbang_sound0";
	//sleep 0.01;				//play sound

	SUPER_PPEffect = ppEffectCreate ["ColorCorrections", 2500];
	//SUPER_PPEffect ppEffectAdjust [1, 1, -0.01, [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]];
	//SUPER_PPEffect ppEffectCommit 0;
	SUPER_PPEffect ppEffectEnable false;
	SUPER_PPEffect ppEffectForceInNVG true;

	SUPER_PPEffect ppEffectAdjust [1, 1, -0.01, [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]];
	SUPER_PPEffect ppEffectCommit 0.01;
	SUPER_PPEffect ppEffectEnable true;

	
	0 fadeSound 0.1; // fades the sound to 10% in 5 seconds
	sleep 1;

	SUPER_PPEffect ppEffectAdjust [1, 1, -0.02, [4.5, 3.5, 1.6, -0.02],[1.8, 1.6, 1.6, 1],[-1.5,0,-0.2,1]]; // almost back to normal vision (I don't know the exact value)
	//[1, 1, 0, [0,0,0,0], [1.1,0.7,1.1,1.1], [1.0,0.7,1.0,1.1]]
	SUPER_PPEffect ppEffectCommit 3;// transition time between white screen and normal colors
	sleep 2;
	2 fadeSound 1;
	sleep 1;
	SUPER_PPEffect ppEffectEnable false; // go back to normal vision (I needed to do this in order to make the white screen effect fade away)
};