_unit = _this select 0;
_unit call cameraOldPimped;
_text = format ["<t size='0.7'>* auf dem Numpad für FreeLook<br />Mausrad switcht Player<br />Rechtsklick beendet Cam <br />YELLING zur Unterhaltung</t>",""];
[_text] call AGM_Core_fnc_displayTextStructured;
_unit setVariable ["AGM_Blood", 1, True];             // Amount of blood in the body.
_unit setVariable ["AGM_isBleeding", False, True];    // Is the unit losing blood? (Rate is determined by damage.)
_unit setVariable ["AGM_Painkiller", 1, True];        // How much painkillers the guy is on. (smaller = more)
_unit setVariable ["AGM_Pain", 0, True]; 
AGM_BloodLevel_CC ppEffectEnable False;
AGM_Unconscious_CC ppEffectEnable False;
AGM_Unconscious_RB ppEffectEnable False;
AGM_Blinding_CC ppEffectEnable False;
AGM_Pain_CC ppEffectEnable False;
AGM_Pain_CA ppEffectEnable False;
SPECTATOR_LIST = [];
SPECTATOR_LIST = SPECTATOR_LIST + [name player];
publicVariable "SPECTATOR_LIST";
//private "_camera";
//_camera = "camera" camcreate [0,0,0];
//_camera camsettarget respawn_helper; // sektor-tonne
//_camera cameraEffect ["internal", "BACK"];
//_camera camsetrelpos [0, 0, 4]; // 4m über tonne
//_camera camCommand "inertia on";
//_camera camCommit 0;