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
this forceAddUniform "LOP_U_IT_Fatigue_02";
for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "AGM_Morphine";
this addItemToUniform "SmokeShellRed";
this addItemToUniform "Chemlight_red";
this addVest "V_TacVest_blk";
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_Bandage";};
this addItemToVest "AGM_Morphine";
for "_i" from 1 to 3 do {this addItemToVest "30Rnd_9x21_Mag";};
for "_i" from 1 to 2 do {this addItemToVest "6Rnd_GreenSignal_F";};
for "_i" from 1 to 3 do {this addItemToVest "AGM_HandFlare_White";};
this addHeadgear "H_caf_ag_turban";
this addGoggles "SFG_Tac_smallBeardO";

comment "Add weapons";
this addWeapon "hgun_PDW2000_F";
this addPrimaryWeaponItem "optic_ACO_grn_smg";
this addWeapon "hgun_Pistol_Signal_F";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_rf7800str_1";
this linkItem "ItemGPS";

comment "Set identity";
this setFace "WhiteHead_17";
this setSpeaker "Male03PER";
