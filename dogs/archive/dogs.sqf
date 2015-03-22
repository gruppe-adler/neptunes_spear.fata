//----------------------------------------------------------------------------------------------------------
//  Patrulla Perruna | Dog Patrol
//  Version: 0.0.3
//  Autor: Monovdd | Carlos Alberto Arango Schutz (monovdd@hotmail.com) 
//	Creditos: Team Condor | CLA
//----------------------------------------------------------------------------------------------------------
//  Notas: Este Script esta inspirado en otros dos scripts existentes, de hecho se toma parte del trabajo
//	       de los autores de dichos scripts. Script blitzy (Limitaciones para multiplayer) y EODD Dog li-
//	       mitaciones en cuanto a la jugabilidad. 
//
//	Descriptcion: Script que permite añadir un perro a una unidad para formar una patrulla con perro que 
//		 						detecte y ataque a soldados enemigos cercanos y reproduzca sonidos de un perro real.
//----------------------------------------------------------------------------------------------------------
// Uso: Colocar lo siguiente en el init del soldado amo del perro:
//			_nul = [this, "PASTOR",1] execvm "scripts\patrullaperruna.sqf";
//----------------------------------------------------------------------------------------------------------
//PROCESO DE INICIALIZACION DEL SCRIPT. SE DEFINEN VARIABLES.
//----------------------------------------------------------------------------------------------------------

if (Isserver) then {

	_unidad = _this select 0;
	
	_RazaDeseada = _this select 1;
	
	_cantidad = _this select 2;
	
	_bando = side _unidad;
	
	_grupo = creategroup _bando;
	
	for "_i" from 1 to _cantidad do {

		_raza = "Alsatian_Random_F";

		switch (_RazaDeseada) do {
		
			case "Alsatian":
			
			{
				_raza = "Alsatian_Random_F";
			};
		
			case "FIN":
			
			{
			
				_raza = "Fin_random_F";
				
			};
			
			default 
				
			{ 
			
				_raza = "Alsatian_Random_F";
				
			};

		};		
		
//----------------------------------------------------------------------------------------------------------
//SE CREA LA NUEVA UNIDAD EN EL GRUPO DE LA UNIDAD AMO. SE LE DA FORMATO.
//----------------------------------------------------------------------------------------------------------
		
		_NombrePerro = format ["k9%1",round (random 1000)];
		
		call compile format ['"%2" createUnit [getpos _unidad, _grupo,"%1=this; this setSpeedMode ""NORMAL""; this setbehaviour ""SAFE""",1]',_NombrePerro,_raza];
		
		_perro = call compile format ["%1",_NombrePerro];
			
		[_perro,_unidad] spawn {
		
		_perro = _this select 0;
		
		_unidad = _this select 1;
		
//----------------------------------------------------------------------------------------------------------
//INICIA LA IA DEL PERRO. SE DEFINE COMPORTAMIENTO SEGUN FACTORES Y SITUACION
//----------------------------------------------------------------------------------------------------------
								
		while {alive _perro} do
		
		{	
		
//----------------------------------------------------------------------------------------------------------
//VERIFICACION DE ENTIDADES CERCANAS
//----------------------------------------------------------------------------------------------------------		

			_HumanosCerca = [];
			
			_HumanosVivos = [];
			
			_distancia = 1000;
			
			_cercano = objNull;
					
			_HumanosCerca = nearestObjects [position _perro, ["man"], 150];
					
			{if ((side _perro)getFriend (side _x) <0.6) then {_HumanosVivos = _HumanosVivos + [_x];_perro knowsabout _x; _unidad knowsabout _x;}}forEach _HumanosCerca;					

//----------------------------------------------------------------------------------------------------------
//ENEMIGOS CERCA SE PROCEDE A PERSEGUIRLOS. SITUACION MOVIMIENTO
//----------------------------------------------------------------------------------------------------------	
					
				  		if (count _HumanosVivos >0)  then {							

							_HumanoCercano = _HumanosVivos select 0;	
														
							_distancia = (position _perro) distance (_HumanoCercano);
							
							_perro setspeedmode "FULL";
						
							if ((_distancia > 125) && (_distancia < 150)) then {
							
								_perro dowatch _HumanoCercano;	
								
								_TipoLadrido = round(random 2);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido1"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ladrido2"] call CBA_fnc_globalSay3d;
								
								};
								
								case 2:
							
								{
								
								[_perro, "ladrido3"] call CBA_fnc_globalSay3d;
								
								};
								
								};																																			
								
							};							
							
							if ((_distancia > 50) && (_distancia < 125)) then {
							
								_perro domove position _HumanoCercano;
								
								_TipoLadrido = round(random 2);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido1"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ladrido2"] call CBA_fnc_globalSay3d;
								
								};
								
								case 2:
							
								{
								
								[_perro, "ladrido3"] call CBA_fnc_globalSay3d;
								
								};
								
								};	

							};

							if ((_distancia > 25) && (_distancia < 50)) then {
								
								_perro domove position _HumanoCercano;
								
								_TipoLadrido = round(random 2);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido1"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ladrido2"] call CBA_fnc_globalSay3d;
								
								};
								
								case 2:
							
								{
								
								[_perro, "ladrido3"] call CBA_fnc_globalSay3d;
								
								};
								
								};	

							};

							if ((_distancia > 15) && (_distancia < 25)) then {					

								_perro domove position _HumanoCercano;
								
								_TipoLadrido = round(random 2);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido1"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ladrido2"] call CBA_fnc_globalSay3d;
								
								};
								
								case 2:
							
								{
								
								[_perro, "ladrido3"] call CBA_fnc_globalSay3d;
								
								};
								
								};	

							};
							
							if ((_distancia > 5) && (_distancia < 15)) then {

								_TipoLadrido = round(random 1);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido2"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ronroneo1"] call CBA_fnc_globalSay3d;
								
								};
								
							
								};	

								_perro domove position _HumanoCercano;

							};
							
							if ((_distancia > 2) && (_distancia < 5)) then {

								_TipoLadrido = round(random 1);
	
								switch (_TipoLadrido) do {
								
								case 0:
							
								{
		
								[_perro, "ladrido3"] call CBA_fnc_globalSay3d;
								
								};
								
								case 1:
							
								{
								
								[_perro, "ronroneo1"] call CBA_fnc_globalSay3d;
								
								};
								
							
								};	

								_perro domove position _HumanoCercano;

							};

							if (_distancia < 2) then {
							
									_perro domove position _HumanoCercano;
								
								
//----------------------------------------------------------------------------------------------------------
//SITUACIÓN DE ATAQUE. SE DEFINE DAÑO Y EL PROCESO DEL DAÑO
//----------------------------------------------------------------------------------------------------------
								
								if (vehicle _HumanoCercano isKindOf "CAManBase") then { 
														
									_ComprobarDanoHumano = getDammage _HumanoCercano;	
																											
									_DanoMordisco = _ComprobarDanoHumano + 0.3;

									[_perro, "mordisco"] call CBA_fnc_globalSay3d;		
										
									_HumanoCercano setdamage _DanoMordisco;

									_perro switchMove "Dog_Sprint";

									_HumanoCercano switchMove "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon";
									sleep 0.8;
									_HumanoCercano switchMove "AmovPercMsprSlowWrflDf_AmovPpneMstpSrasWrflDnon_2";
									sleep 0.95;
									_HumanoCercano switchMove "AinjPpneMstpSnonWrflDnon_rolltoback";
									sleep 0.5;
									_HumanoCercano switchMove "AinjPpneMstpSnonWrflDnon_rolltofront";
									sleep 0.5;
									
									[_HumanoCercano, "grito"] call CBA_fnc_globalSay3d;

									sleep 5;
									
									_DanoMordisco = "";
									
									_HumanoCercano switchMove "";
								
									sleep 0.5;
						
								};
								
//----------------------------------------------------------------------------------------------------------
//FIN DE LA SITUACION DE ATAQUE. SE CIERRA LOS OTROS PROCESOS
//----------------------------------------------------------------------------------------------------------	
																
							};
	
						};

				sleep 0.5;

//----------------------------------------------------------------------------------------------------------
//SITUACION PERRO ABATIDO EN EL ATAQUE. SE DEFINE UNA LOGICA DE JUEGO PARA REPRODUCIR SONIDOS
//----------------------------------------------------------------------------------------------------------	

				if (not alive _perro) then {
						
					//Se crea el grupo en el sidelogic para crear el game logic debido a que el comando say no se ejecuta en unidades muertas.

					_GrupoSideLogic = createGroup sideLogic;


					//Se crea la unidad en el grupo sidelogic, en este caso la unidad es un gamelogic


					_PerroMuerto = _GrupoSideLogic createUnit ["logic", position _perro, [], 0, "none"];


					[_PerroMuerto, "llanto"] call CBA_fnc_globalSay3d;

													
					sleep 5;
					
					//Se borra el gamelogic

					deleteVehicle _PerroMuerto
				};
								
//----------------------------------------------------------------------------------------------------------
//SITUACION MOVIMIENTO CON Y HACIA EL AMO. SE DEFINE MATEMATICAMENTE LA POSICION A LA CUAL EL PERRO SE MOVERA
//----------------------------------------------------------------------------------------------------------	

				_perro domove [(getpos _unidad select 0) - ((random(10)+30)*sin(getdir _unidad - 180)), (getpos _unidad select 1) - ((random(10)+30)*cos(getdir _unidad - 180))];

				_perro setspeedmode "NORMAL";
				
			};

//----------------------------------------------------------------------------------------------------------
//SE CIERRAN TODAS LAS FUNCIONES, VARIABLES, PROCESOS Y SENTENCIAS.
//----------------------------------------------------------------------------------------------------------	

			};

		};

	};
	
};

//----------------------------------------------------------------------------------------------------------
//FIN DEL SCRIPT
//----------------------------------------------------------------------------------------------------------	
