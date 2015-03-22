cmflare = { 
 _timeCount = 0;   
  while {alive apache AND _timeCount < 10} do { 
   sleep 0.5;  apache action ["useWeapon", apache, driver apache, 0]; 
   _timeCount = _timeCount + 1;  };
    };  