
extraction_crew moveInDriver extraction_heli;
sleep 1; 
nirvana1 = (group extraction_heli) addWaypoint [getMarkerPos "mrk_extraction", 0];
nirvana1 setWaypointType "MOVE";
nirvana1 setWaypointSpeed "FULL";

sleep 4;
sleep 1;
nirvana2 = (group apache) addWaypoint [getMarkerPos "mrk_extraction", 0];
nirvana2 setWaypointType "MOVE";
nirvana2 setWaypointSpeed "FULL";
sleep 3;
hintSilent "MISSION COMPLETED";