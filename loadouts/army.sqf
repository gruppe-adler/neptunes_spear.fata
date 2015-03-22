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

possibleHeads = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03","GreekHead_A3_09","GreekHead_A3_08","GreekHead_A3_07","GreekHead_A3_04","GreekHead_A3_03","GreekHead_A3_02"] call BIS_fnc_selectRandom;
possibleSpeaker = ["Male01PER","Male02PER","Male03PER"] call BIS_fnc_selectRandom;
possibleAK = ["rhs_weap_ak74m_desert","rhs_weap_ak74m_npz","rhs_weap_ak74m_camo"];

comment "Add containers";
_unit forceAddUniform "ARC_Common_MC_Uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "AGM_Bandage";};
_unit addItemToUniform "AGM_Morphine";
_unit addItemToUniform "rhs_30Rnd_545x39_AK";
_unit addVest "V_TacVest_khk";
for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
_unit addHeadgear "H_MilCap_gry";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_npz";
_unit addPrimaryWeaponItem "hlc_optic_kobra";
_unit addWeapon "hgun_P07_F";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc152_1";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace possibleHeads;
_unit setSpeaker possibleSpeaker;