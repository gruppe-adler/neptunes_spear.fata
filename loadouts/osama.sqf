this = _this select 0;

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
this forceAddUniform "U_CAF_AG_ME_ROBES_03a";
for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "6Rnd_45ACP_Cylinder";};
this addItemToUniform "AGM_Morphine";
this addItemToUniform "SmokeShellRed";
this addItemToUniform "Chemlight_red";
this addHeadgear "H_caf_ag_beanie";
this addGoggles "SFG_Tac_BeardO";

comment "Add weapons";
this addWeapon "hgun_Pistol_heavy_02_F";
this addWeapon "AGM_Vector";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemWatch";
this linkItem "tf_rf7800str_1";
this linkItem "ItemGPS";

comment "Set identity";
this setFace "GreekHead_A3_03";
this setSpeaker "Male03PER";