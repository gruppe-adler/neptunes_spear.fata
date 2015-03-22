
if (!isServer) then {
	waitUntil {!isNull player};
	sleep 10;
	hq_logic_mama sideRadio "briefing";
};

actioncount = 0;
[] execVM "VCOM_Driving\init.sqf";
//null = [] execvm "breach\breach1.sqf";
cameraOldPimped = compile preprocessFile "half_spectator\cameraOld_rip.sqf";	

// eventhandler possibly only local?

if (!isMultiplayer) then {
	players = switchableUnits; } else { 
	players = playableUnits;
};

{
[_x] execVM "half_spectator\addKnockoutEventhandler.sqf";
[_x] execVM "half_spectator\addDamageEventhandler.sqf";

} forEach players;



POLICE_ARRIVED = false;
BLUFOR_ARRIVED = false;
RADAR_DETECTED = false;
MISSION_DETECTED_FAIL = false;
HELI_CRASH = 0;

call compile preprocessFileLineNumbers "police\blingbling.sqf";	
[offroad_search1] execVM "police\retextureMe.sqf";
	[offroad1] execVM "police\retextureMe.sqf";
	[police_lkw] execVM "police\retextureMe.sqf";

if (!isServer) exitWith {};

	[main_building] execVM "half_spectator\addDamageEventhandler.sqf";
	main_building allowDamage false;

	[] execVM "ambient\moveSheep.sqf";
	[radio] execVM "ambient\playRadio.sqf";
	
	[] execVM "breach\addEventHandler.sqf";




	"mrk_army1_start" SetMarkerAlphaLocal 0;
	"mrk_police_start" SetMarkerAlphaLocal 0;

	

	army_units = ["O_G_Soldier_F"];
	_pos_army1 = getMarkerPos "mrk_army1_start";

	
	//_grp1_army1 = [_pos_army1,east,army_units,[3,3],3,["mrk_army1_start","RANDOM","NOWP2"]] call UPSMON_CreateGroup;




	{
_x setSkill ["aimingspeed", 0.2];
_x setSkill ["aimingaccuracy", 0.2];
_x setSkill ["aimingshake", 0.5];
_x setSkill ["spottime", 0.8];
_x setSkill ["spotdistance", 1];
_x setSkill ["commanding", 1];
_x setSkill ["general", 1];
} forEach allUnits;