private _simulationRequired = [ "Land_LampStreet_small_F", 
								"Land_LampHalogen_F", 
								"Land_Flush_Light_yellow_F", 
								"Land_Flush_Light_red_F", 
								"Land_LampAirport_F", 
								"Land_LampShabby_F", 
								"Land_LampDecor_F", 
								"Land_LampStreet_F", 
								"Land_runway_edgelight_blue_F",
								"Land_runway_edgelight", 
								"Land_Flush_Light_green_F", 
								"Land_PortableLight_double_F", 
								"Land_Device_assembled_F",
								"Flag_Gendarmerie_F", 
								"Flag_Altis_F", 
								"Flag_IDAP_F", 
								"Flag_NATO_F"];

{
	private _object = objNull;
	
	if (((_x param [ 5 ] ) isEqualTo 1 ) && !hasInterface && !isDedicated ) then {
		_object = createVehicle [ _x param [ 0 ], [ 0, 0, 100 ], [], 0, "FLY" ];
		_object enableSimulationGlobal false;
	} else {
		if((( _x param [ 5 ] ) isEqualTo 0 ) && hasInterface ) then {
			_object = [ _x param [ 0 ], [ 0, 0, 100 ] ] call zero_fnc_createVehicleLocal;
			_object enableSimulation false;
		};
	}; 
	
	if( !isNull _object ) then {
		_object allowDamage false;
		_object setDir ( _x param [ 2 ] );
		_object setVectorDirAndUp ( _x select 3 );
		[ _object, _x param [ 1 ] ] call zero_fnc_setPosASL; 
		if( ( ( _x param [ 5 ] ) isEqualTo 1 ) && !hasInterface && !isDedicated ) then {
			_object enableSimulationGlobal true; 
		} else { 
			if( ( _x param [ 0 ] ) in _simulationRequired ) then { 
				_object enableSimulation true; 
			}; 
		}; 
		_object call compile format[ "%1", _x param [ 4 ] ]; 
	}; 
	
	false; 

} count ( getArray( missionConfigFile >> "MapConfig" ) param [ 0 ] ); 

{ 
	_x hideObject true; 
	false; 
} count ( [ 24745, 18902.2, 0 ] nearObjects 30 );
