_table = _this select 0;

_table enableSimulation false;   
_obj = [[_table,"TOP"],"Land_Photos_V3_F",1,[(random 0.2)-0.1,(random 0.1)-0.1,0],(random 20)-15] call BIS_fnc_spawnObjects;  
_obj select 0 setObjectTexture [0, "ambient\pron2.jpg"];   
_obj select 0 addAction ["Pick up photos", {deleteVehicle (_table select 0);}]; 

_monitor1 = [[_table,"TOP"],"Land_PCSet_01_screen_F",1,[(random 0.2)-0.3,(random 0.5)-0.1,0],(random 10)-1] call BIS_fnc_spawnObjects; 
_monitor1 select 0 setObjectTexture [0, "ambient\pron.jpg"]; 
//_monitor1 select 0 setDir 90;

_keyboard = [[_table,"TOP"],"Land_PCSet_01_keyboard_F",1,[(random 0.2)-0.6,(random 0.1)-0.1,0],(random 10)-1] call BIS_fnc_spawnObjects; 

_mouse = [[_table,"TOP"],"Land_PCSet_01_mouse_F",1,[(random 0.5)-0.1,(random 0.1)-0.1,0],(random 10)-1] call BIS_fnc_spawnObjects; 
