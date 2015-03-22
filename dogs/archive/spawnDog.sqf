// call 
// null = [getPos player,osama] execVM "dogs\spawnDog.sqf";

_position = _this select 0;
_owner = _this select 1;
_groupOf = group _owner;

//_dogname = format ["k9%1",round (random 1000)];

dog1 = _groupOf createUnit ["Alsatian_Random_F", _position, [], 0, "FORM"];



[dog1, osama] execFSM "dogs\ai_dog.fsm";