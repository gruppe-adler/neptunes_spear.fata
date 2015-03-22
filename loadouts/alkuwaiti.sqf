comment "Exported from Arsenal by nomisum";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "LOP_U_Afg_civ_04";
for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "AGM_Morphine";
this addItemToUniform "SmokeShellRed";
this addItemToUniform "Chemlight_red";
this addBackpack "B_AssaultPack_blk";
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bandage";};
this addItemToBackpack "AGM_Morphine";
this addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 5 do {this addItemToBackpack "Chemlight_red";};
this addHeadgear "H_caf_ag_paktol_02";
this addGoggles "SFG_Tac_moustacheD";

comment "Add weapons";
this addWeapon "rhs_weap_ak74m_npz";
this addPrimaryWeaponItem "SMA_eotech552_3XDOWN";
this addWeapon "hgun_Pistol_heavy_02_F";
this addWeapon "AGM_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_rf7800str_1";
this linkItem "ItemGPS";

comment "Set identity";
this setFace "PersianHead_A3_03";
this setSpeaker "Male03PER";
