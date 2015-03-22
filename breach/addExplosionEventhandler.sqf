_object = _this select 0;

keepDoorLocked = {
    _obj = _this select 0;


    [_obj] spawn {
        _thisDoor = _this select 0;
        _thisDoor setVariable ["locked", true,true];
        //nul = [_thisDoor] execvm "breach\breach5.sqf";
        [[[_thisDoor],"breach\breach5.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
        //hintSilent "door is locked";
            
            while {_thisDoor getVariable "locked"} do

                {   

                    
                    _thisDoor animate ["dvere0", 0];
                    _thisDoor animate ["dvere1", 0]; 
                    _thisDoor animate ["dvere2", 0];
                    _thisDoor animate ["dvere3", 0];
                    _thisDoor animate ["dvere4", 0];
                    _thisDoor animate ["dvere5", 0];
                    _thisDoor animate ["dvere6", 0];
                    _thisDoor animate ["dvere7", 0];
                    _thisDoor animate ["dvere8", 0];
                    _thisDoor animate ["dvere9", 0];

                    _thisDoor animate ["Dvere0", 0];
                    _thisDoor animate ["Dvere1", 0]; 
                    _thisDoor animate ["Dvere2", 0];
                    _thisDoor animate ["Dvere3", 0];
                    _thisDoor animate ["Dvere4", 0];

                    _thisDoor animate ["Door1", 0]; 

                    _thisDoor animate ["Gate_L", 0]; 
                    _thisDoor animate ["Gate_R", 0]; 
              
                };
                
                sleep 0.1;
            };
};


if (typeOf _object == "MBG_Cinderwall_5_Gate_InEditor" ||
    typeOf _object == "MBG_Cinderwall_5_SteelDoor_InEditor" ||
    typeOf _object == "MBG_Cinderwall_5_WoodDoor_InEditor" 

    ) then {

        _object = _this select 0;
        _object setVariable ["locked",true];
        [_object] call keepDoorLocked;
        _unlockMe =_object addaction ["<t color='#66ff66'>Unlock</t>","(_this select 0) setVariable [""locked"", false,true]",_Args,1,false,false,"","player distance _target < 3 && side player != west && _target getVariable 'locked'"];
        _lockMe = _object addaction ["<t color='#FF3B3E'>Lock</t>","[_this select 0] call keepDoorLocked",_Args,1,false,false,"","player distance _target < 3 && side player != west && !(_target getVariable 'locked')"];   
};

if (typeOf _object == "MBG_Cinderwall_5_InEditor") then {
    //nul = [_object] execvm "breach\breach5.sqf";
    [[[_object],"breach\breach5.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
};

if (isServer) then {
_object addeventhandler ["handleDamage",{

    _veh = _this select 0;
    _damage = _this select 2;
    _ammo = _this select 4;

              
            if (typeOf _veh == "Land_City2_8m_F" ||
                typeOf _veh == "Land_City2_4m_F" ||
                typeOf _veh == "Land_House_C_4_EP1") then { 
                _damage = 0;
            };
            if (typeOf _veh == "MBG_Cinderwall_5_InEditor") then { 
                _damage = getDammage _veh + 0.8;   
                 if (_ammo != "SLAMDirectionalMine_Wire_Ammo") then {
                _damage = 0;
                //hintSilent format ["that was %1 ammo",_ammo];
                };         
            };

            if (typeOf _veh == "MBG_Cinderwall_5_WoodDoor_InEditor" ||
                typeOf _veh == "MBG_Cinderwall_5_Gate_InEditor") then { 
                  
                 if (_ammo != "SLAMDirectionalMine_Wire_Ammo") then {
                _damage = 0;
                //hintSilent format ["that was %1 ammo",_ammo];
                };         
            };
            


        _damage
}];
};