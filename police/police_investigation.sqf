
[offroad1,0.5] spawn PoliceBlink; 
[offroad_search1,0.5] spawn PoliceBlink; 

sleep 10;
hq_logic_mama sideRadio "police";
sleep 10;


if (isServer) then {
[] spawn {
_soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
_soundToPlay = _soundPath + "sounds\USA_siren.ogg";
	while {alive offroad1 && !POLICE_ARRIVED} do {
		
		playSound3D [_soundToPlay, offroad1, false, getPosASL offroad1, 1, 1, 200];
		sleep 3.9;
	};
};
};

if (!isServer) then {
if (side player == east) then {

hintSilent "police trigger activated";

};
};