if (!local player) exitWith {};

_unit = _this select 0;

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

comment "Add containers";
_unit forceAddUniform "ARC_Common_Black_Uniform";
for "_i" from 1 to 2 do {_unit addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "AGM_EarBuds";};
_unit addItemToUniform "AGM_Morphine";
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
_unit addVest "ARC_Common_Blk_Plate_Carrier";
for "_i" from 1 to 7 do {_unit addItemToVest "AGM_Bandage";};
_unit addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 3 do {_unit addItemToVest "UGL_FlareWhite_F";};
for "_i" from 1 to 3 do {_unit addItemToVest "UGL_FlareGreen_F";};
for "_i" from 1 to 2 do {_unit addItemToVest "UGL_FlareCIR_F";};
for "_i" from 1 to 5 do {_unit addItemToVest "SMA_30Rnd_556x45_M855A1_Tracer";};
for "_i" from 1 to 5 do {_unit addItemToVest "SMA_30Rnd_556x45_M855A1";};
_unit addItemToVest "Chemlight_green";
_unit addBackpack "B_AssaultPack_blk";
_unit addItemToBackpack "AGM_Clacker";
_unit addItemToBackpack "AGM_DefusalKit";
_unit addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_CableTie";};
_unit addItemToBackpack "DemoCharge_Remote_Mag";
for "_i" from 1 to 3 do {_unit addItemToBackpack "Chemlight_blue";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_HandFlare_Red";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "AGM_M84";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "B_IR_Grenade";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellRed";};
_unit addHeadgear "ARC_Common_AllAllBlack_Helmet";
_unit addGoggles "G_Balaclava_combat";

comment "Add weapons";
_unit addWeapon "SMA_HK416afgQCB";
_unit addPrimaryWeaponItem "SMA_supp1b_556";
_unit addPrimaryWeaponItem "SMA_ANPEQ15_TOP_BLK";
_unit addPrimaryWeaponItem "SMA_eotech552_3XDOWN";
_unit addWeapon "hgun_P07_F";
_unit addWeapon "Rangefinder";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_OPFOR";