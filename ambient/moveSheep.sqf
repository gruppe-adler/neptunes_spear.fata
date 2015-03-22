_spawnPos = getMarkerPos "mrk_sheep";
sheepGroup = createGroup East;
Goat1= sheepGroup createUnit ["Sheep_random_F", [_spawnPos select 0,(_spawnPos select 1) +1,0], [], 1, "FORM"];
Goat2= sheepGroup createUnit ["Sheep_random_F", [_spawnPos select 0,(_spawnPos select 1) + 2,0], [], 1, "FORM"];
Goat3= sheepGroup createUnit ["Sheep_random_F", [(_spawnPos select 0) + 1,(_spawnPos select 1) + 1,0], [], 1, "FORM"];
Goat4= sheepGroup createUnit ["Sheep_random_F", [(_spawnPos select 0) + 0.4,(_spawnPos select 1) + 1,0], [], 1, "FORM"];
Goat5= sheepGroup createUnit ["Sheep_random_F", [_spawnPos select 0,(_spawnPos select 1) - 1,0], [], 1, "FORM"];
Goat6= sheepGroup createUnit ["Sheep_random_F", [(_spawnPos select 0) - 1,(_spawnPos select 1) -2,0], [], 1, "FORM"];
Goat7= sheepGroup createUnit ["Sheep_random_F", [(_spawnPos select 0) -0.4,(_spawnPos select 1) -1,0], [], 1, "FORM"];
sheepGroup setFormation "NONE";

[] spawn {
	while {true} do {
	_units = nearestObjects [getPos leader sheepGroup, ["Car","Tank","Man"], 10];
		if (count _units > 1) then {

			_dir = random 359;

			// Move the person 15 meters away from the destination (in the direction of _dir)
			_pos = [((getPos leader sheepGroup) select 0)-30*sin(_dir),((getPos leader sheepGroup) select 1)-30*cos(_dir)];

			leader sheepGroup domove _pos;
			sheepGroup setSpeedMode "FULL";
		} else {
		sheepGroup setSpeedMode "LIMITED";
	};

	sleep 5;
	};
};