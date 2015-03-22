_types = ["Lamps_Base_F", "PowerLines_base_F","Land_LampShabby_F","Land_LandStreet_Small_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos "mrk_compound" nearObjects [_types select _i, 100];
	sleep 1;
	{_x setDamage _onoff} forEach _lamps;
};