private ["_objects","_Nwindows","_GlassSounds","_reshuffleGlassSounds","_i","_path"];
_object = _this select 0;
_Nwindows = [_object] call fnc_windowsnumber;

_GlassSounds = ["sounds\Glass1.wav","sounds\Glass2.wav","sounds\Glass3.wav","sounds\Glass4.wav","sounds\Glass5.wav","sounds\Glass6.wav","sounds\Glass7.wav","sounds\Glass8.wav","sounds\Glass9.wav","sounds\Glass10.wav","sounds\Glass11.wav"];

_copy = _GlassSounds;
_reshuffleGlassSounds = [_copy] call fnc_reshuffleArray;
//hint format["%1",count _GlassSounds];


	for [{_i = 0},{_i < _Nwindows},{_i = _i + 1}] do
		{
			_object setHit ["Glass"+format["%1",_i+1], 1];

			_path = "SUPER_ArmAgeddon\" + (_reshuffleGlassSounds select (_i mod (count _GlassSounds)));
				//hint format["%1 --- %2 ---%3 ---%4 \n %5 --- %6 \n %7",(_reshuffleGlassSounds select (_i mod (count _GlassSounds))),_i+1,_Nwindows,(_i mod (count _GlassSounds)),count _reshuffleGlassSounds,count _GlassSounds,_path];
			[[_path, _object,0.4],"fnc_play3d"] spawn BIS_fnc_MP;
			sleep (0.5+ random 1);
			_i = _i + 1;
	    };


