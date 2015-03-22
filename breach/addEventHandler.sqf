 _doorsAndWalls = nearestObjects [getMarkerPos "mrk_compound", [
 					"MBG_Cinderwall_5_Gate_InEditor",
 					"MBG_Cinderwall_5_SteelDoor_InEditor",
 					"MBG_Cinderwall_5_WoodDoor_InEditor",
 					"Land_Wall_L3_gate_EP1",
 					"Land_City2_8m_F",
 					"Land_City2_4m_F",
 					"MBG_Cinderwall_5_InEditor",
 					"MBG_Cinderwall_2p5_InEditor"
 				], 150];
 			
sleep 2;
 {nul = [_x] execVM "breach\addExplosionEventhandler.sqf";} forEach _doorsAndWalls;

  _doorsAndWalls_base = nearestObjects [getMarkerPos "mrk_base", [
 					 					
 					"MBG_Cinderwall_5_WoodDoor_InEditor",
 					"MBG_Cinderwall_5_InEditor"
 					
 				], 50];
 		
sleep 2;
 {nul = [_x] execVM "breach\addExplosionEventhandler.sqf";} forEach _doorsAndWalls_base;


/*

_door_names = ["Dvere1","Dvere2","Dvere3","Dvere4"];
{
main_building animate [_x,1];
  }forEach _door_names;                    

sleep 2;

If(isServer)then
	{
	main_building setVariable ["locked1",false,true];
	main_building setVariable ["locked2",false,true];
	main_building setVariable ["locked3",false,true];
	main_building setVariable ["locked4",false,true];


	main_building setVariable ["destroyed1",false,true];
	main_building setVariable ["destroyed2",false,true];
	main_building setVariable ["destroyed3",false,true];
	main_building setVariable ["destroyed4",false,true];
	};

If(local player)then
	{
	  
	  
	    mb_keepDoorLocked = {
   			 _obj = _this select 0;


   			 [_obj] spawn {
	               _house = _this select 0;

	                while{
	                	_house getVariable "locked1" ||
	                	_house getVariable "locked2" ||
	                	_house getVariable "locked3" ||
	                	_house getVariable "locked4"

	                } do //als Bedingung kannst du hier auch !MISSION_COMPLETE oder soetwas eintragen, damit dieses ding nicht ewig rotiert 
	                {
	                 
	                 
	                 	if (_house getVariable "locked1" && !(_house getVariable "destroyed1")) then {
	  
	                    	_house animate ["Dvere1",1];
	                	};

	                 	if (_house getVariable "locked2" && !(_house getVariable "destroyed2")) then {
	  
	                    	_house animate ["Dvere2",1];
	                	};

	                 	if (_house getVariable "locked3" && !(_house getVariable "destroyed3")) then {
	  
	                    	_house animate ["Dvere3",1];
	                	};

	                 	if (_house getVariable "locked4" && !(_house getVariable "destroyed4")) then {
	  
	                    	_house animate ["Dvere4",1];
	                	};
	                
	                   
	                  
	                 
	                 sleep 0.1;
	            };
	      };
	    };
};
	 
	

doorknob1 = [(main_building modelToWorld  (main_building selectionPosition "osa Door_1")) select 0,
			(main_building modelToWorld  (main_building selectionPosition "osa Door_1")) select 1,
			((main_building modelToWorld  (main_building selectionPosition "osa Door_1")) select 2) + 1];

doorknob2 = [(main_building modelToWorld  (main_building selectionPosition "osa Door_2")) select 0,
			(main_building modelToWorld  (main_building selectionPosition "osa Door_2")) select 1,
			((main_building modelToWorld  (main_building selectionPosition "osa Door_2")) select 2) + 1];

doorknob3 = [(main_building modelToWorld  (main_building selectionPosition "osa Door_3")) select 0,
			(main_building modelToWorld  (main_building selectionPosition "osa Door_3")) select 1,
			((main_building modelToWorld  (main_building selectionPosition "osa Door_3")) select 2) + 1];

doorknob4 = [(main_building modelToWorld  (main_building selectionPosition "osa Door_4")) select 0,
			(main_building modelToWorld  (main_building selectionPosition "osa Door_4")) select 1,
			((main_building modelToWorld  (main_building selectionPosition "osa Door_4")) select 2) + 1];


_unlockMe1 = player addaction ["<t color='#66ff66'>Unlock</t>","main_building setVariable [""locked1"", false,true]",_Args,1,false,false,"","player distance doorknob1 < 3 && side player != west && (main_building getVariable 'locked1') && !(main_building getVariable 'destroyed1')"];
_lockMe1 = player addaction ["<t color='#FF3B3E'>Lock</t>","main_building setVariable [""locked1"", true,true];[main_building] call mb_keepDoorLocked",_Args,1,false,false,"","player distance doorknob1 < 3 && side player != west && !(main_building getVariable 'locked1') && !(main_building getVariable 'destroyed1')"];   

_unlockMe2 = player addaction ["<t color='#66ff66'>Unlock</t>","main_building setVariable [""locked2"", false,true]",_Args,1,false,false,"","player distance doorknob2 < 3 && side player != west && (main_building getVariable 'locked2') && !(main_building getVariable 'destroyed2')"];
_lockMe2 = player addaction ["<t color='#FF3B3E'>Lock</t>","main_building setVariable [""locked2"", true,true];[main_building] call mb_keepDoorLocked",_Args,1,false,false,"","player distance doorknob2 < 3 && side player != west && !(main_building getVariable 'locked2') && !(main_building getVariable 'destroyed2')"];   

_unlockMe3 = player addaction ["<t color='#66ff66'>Unlock</t>","main_building setVariable [""locked3"", false,true]",_Args,1,false,false,"","player distance doorknob3 < 3 && side player != west && (main_building getVariable 'locked3') && !(main_building getVariable 'destroyed3')"];
_lockMe3 = player addaction ["<t color='#FF3B3E'>Lock</t>","main_building setVariable [""locked3"", true,true];[main_building] call mb_keepDoorLocked",_Args,1,false,false,"","player distance doorknob3 < 3 && side player != west && !(main_building getVariable 'locked3') && !(main_building getVariable 'destroyed3')"];   

_unlockMe4 = player addaction ["<t color='#66ff66'>Unlock</t>","main_building setVariable [""locked4"", false,true]",_Args,1,false,false,"","player distance doorknob4 < 3 && side player != west && (main_building getVariable 'locked4') && !(main_building getVariable 'destroyed4')"];
_lockMe4 = player addaction ["<t color='#FF3B3E'>Lock</t>","main_building setVariable [""locked4"", true,true];[main_building] call mb_keepDoorLocked",_Args,1,false,false,"","player distance doorknob4 < 3 && side player != west && !(main_building getVariable 'locked4') && !(main_building getVariable 'destroyed4')"];   

*/
//nul = [doorknob1] execvm "breach\breach_house.sqf";
//nul = [doorknob2] execvm "breach\breach_house.sqf";
//nul = [doorknob3] execvm "breach\breach_house.sqf";
//nul = [doorknob4] execvm "breach\breach_house.sqf";