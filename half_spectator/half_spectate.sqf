// 1) enables player to spectate and talk while down
// 2) player can choose to mute himself/spectator_channel for the rest of the game and get free cam instead


_unit = _this select 0;


sleep 3;

if !(player getVariable ["AGM_NoRadio_isMuted"]) then {
  [player] call AGM_Core_fnc_unmuteUnit;
};

player setVariable ["AGM_Unconscious", False, True]; // deprecated since 0.95
player setVariable ["AGM_isUnconscious", False, True];
//player setVariable ["AGM_canTreat", True, True];

player setVariable ["tf_globalVolume", 1];
player setVariable ["tf_voiceVolume", 1, True];
player setVariable ["tf_unable_to_use_radio", False, True];
player setVariable ["acre_sys_core_isDisabled", False, True];
player setVariable ["acre_sys_core_globalVolume", 1];

//AGM effects

	player setVariable ["AGM_Bleeding", false];
	player setVariable ["AGM_Unconscious", false];
	player setVariable ["AGM_InPain", false];
	//AGM_BloodLevel_CC ppEffectEnable False;
	AGM_Unconscious_CC ppEffectEnable False;
	AGM_Unconscious_RB ppEffectEnable False;
	AGM_Blinding_CC ppEffectEnable False;
	//AGM_Pain_CC ppEffectEnable False;
	//AGM_Pain_CA ppEffectEnable False;
	// probably user input is needed for action menu?
	 [false] call AGM_Core_fnc_disableUserInput;

//[_unit, "wokeUp", [_unit]] call AGM_Core_fnc_callCustomEventHandlersGlobal;
if (!local player) exitWith {};
// give player ability to decide to mute himself and go freecam instead
spectator_decision = player addAction [
			 "<t color=""#93E352"">Choose Spectator",
	 		{
		 		[player] execVM "half_spectator\callSpectator.sqf";
		 		[player, true] call TFAR_fnc_forceSpectator;
				
			},
	  		_Args, 1, false, false, "",
	 		"_this == _target"
];