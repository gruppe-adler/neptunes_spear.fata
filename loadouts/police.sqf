_unit = _this select 0;

if !(local _unit) exitWith {};

comment "Exported from Arsenal by nomisum";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

possibleHeads = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03"] call BIS_fnc_selectRandom;
possibleSpeaker = ["Male01PER","Male02PER","Male03PER"] call BIS_fnc_selectRandom;


comment "Add containers";
_unit forceAddUniform "U_BG_Guerilla2_1";
for "_i" from 1 to 2 do {_unit addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToVest "AGM_CableTie";};
_unit addItemToUniform "AGM_Morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addVest "V_TacVest_blk_POLICE";
_unit addItemToVest "SmokeShell";
_unit addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
_unit addHeadgear "H_MilCap_blue";

comment "Add weapons";
_unit addWeapon "hgun_Rook40_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";

comment "Set identity";
_unit setFace possibleHeads;
_unit setSpeaker possibleSpeaker;