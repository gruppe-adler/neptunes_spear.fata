/*
Taw_Jarhead
Breaching script v1
3/25/2014

    pseudo code

    0. create object and hide it then check the distance from the object and if player strays from building activate cleanup
    1. create charge
    2. position charge on the door
    3. excute script to stun AI
    4. open the door
    5. remove action from player
    6. delete object created

*/
if (isServer) exitWith {};
_door = _this select 0;
_objectTT = "Land_MetalBarrel_F" createvehiclelocal position _door;


hideObject _objectTT;

    // prevents duplicate adding of action
  
        // create the charge check the direction of player then set charge close to door
        c4 = [];


        action1 = _door addAction ["<t color='#3cff00'>M6 Charge</t>", {
        player playActionNow "PutDown";
        _c4 = createMine ["SLAMDirectionalMine", position player, [], 0];//DemoCharge_Remote_Ammo_Scripted
        _door removeaction action1;
        _heightAboveGround = ((getPosATL player) select 2);
        //hintSilent format ["%1",_heightAboveGround];
        _direction = getdir player;
        switch (true) do
        {
        //case ((_direction > 0) and (_direction < 90)) : { _c4 setpos [(getpos _c4 select 0)+.3, ((getpos _c4 select 1)+1.2),1]; _c4 setVectorDirAndUp [[0.5,-0.5,0],[0.5,0.5,0]];};
        //case ((_direction > 90) and (_direction < 180)) : { _c4 setpos [(getpos _c4 select 0), ((getpos _c4 select 1)-1.3),1]; _c4 setVectorDirAndUp [[0.5,-0.5,0],[0.5,0.5,0]];};
        //case ((_direction > 180) and (_direction < 270)) : { _c4 setpos [(getpos _c4 select 0)-.5, (getpos _c4 select 1)-.8,1]; _c4 setVectorDirAndUp [[0.5,-0.5,0],[0.5,0.5,0]];};
        //default { _c4 setpos [(getpos _c4 select 0), ((getpos _c4 select 1)+1),1]; _c4 setVectorDirAndUp [[0.5,-0.5,0],[0.5,0.5,0]];};
        case ((_direction > 0) and (_direction < 90)) : { _c4 setpos [(getpos _c4 select 0)+.3, ((getpos _c4 select 1)+1.2),_heightAboveGround+1]; _c4 setVectorDirAndUp [[0.5,-0.5,1],[0.5,0.5,0]];};
        case ((_direction > 90) and (_direction < 180)) : { _c4 setpos [(getpos _c4 select 0), ((getpos _c4 select 1)-1.3),_heightAboveGround+1]; _c4 setVectorDirAndUp [[0.5,-0.5,1],[0.5,0.5,0]];};
        case ((_direction > 180) and (_direction < 270)) : { _c4 setpos [(getpos _c4 select 0)-.5, (getpos _c4 select 1)-.8,_heightAboveGround+1]; _c4 setVectorDirAndUp [[0.5,-0.5,1],[0.5,0.5,0]];};
        default { _c4 setpos [(getpos _c4 select 0), ((getpos _c4 select 1)+1),_heightAboveGround+1]; _c4 setVectorDirAndUp [[0.5,-0.5,1],[0.5,0.5,0]];};
      
        };

        _n = count c4;
        c4 set [_n, _c4];
        action2 = player addAction [format ["<t color='#ff2222'>Detonate Charge #%1</t>", _n + 1], {
            player removeAction (_this select 2);
            
            
            //sleep 0.2;
            [[[c4 select (_this select 3)], "breach\stun.sqf"],"BIS_fnc_execVM"] call BIS_fnc_MP;
           // [[[], "breach\allowDamageFalse.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;
            sleep 1;

            (c4 select (_this select 3)) setDamage 1;

            
             
            
            player removeaction action1; // remove the action from player
            
            
            
       
            }, _n];
        },_Args,1,false,false,"","((_target distance _this) < 3) && side player != east && alive _this"];



  


 // close while
    waitUntil {!alive _door};
    deletevehicle _objectTT;

