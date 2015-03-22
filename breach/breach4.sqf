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

_door = _this select 0;
_objectTT = "Land_MetalBarrel_F" createvehiclelocal position _door;
posi = [getPos _door select 0, getPos _door select 1, 0];


hideObject _objectTT;

    // prevents duplicate adding of action
  
        // create the charge check the direction of player then set charge close to door
       
        

        action1 = _door addAction ["<t color='#3cff00'>M6 Charge</t>", {
        player playActionNow "PutDown";
        //_c4 = createMine ["SLAMDirectionalMine", position player, [], 0];//DemoCharge_Remote_Ammo_Scripted
        _door removeaction action1;
        
       

        

        
        action2 = player addAction [format ["<t color='#ff2222'>Detonate Charge #%1</t>", _n + 1], {
            player removeAction (_this select 2);
            missile =  createVehicle ["M_RPG32_F", posi, [], 0, "CAN_COLLIDE"];
            [[posi, "breach\stun.sqf"],"BIS_fnc_execVM",true,false] spawn BIS_fnc_MP;

                
            player removeaction action1; // remove the action from player
            
            
           
        


    
            }, _n];
        },_Args,1,false,false,"","((_target distance _this) < 3) && side player != east && alive _this"];



  


 // close while
    waitUntil {!alive _door};
    deletevehicle _objectTT;

