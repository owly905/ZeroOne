{ 
	private _marker = createMarkerLocal [ ( _x param [ 0 ] ), ( _x param [ 2 ] ) ]; 

	if (( _x param [ 4 ]) != "" ) then {
		_marker setMarkerColorLocal ( _x param [ 4 ] ); 
	}; 

	_marker setMarkerTypeLocal ( _x param [ 3 ] ); 
	_marker setMarkerTextLocal ( _x param [ 1 ] );

	if((((_x param [ 5 ]) param [ 0 ] ) != 1 ) && ((( _x param [ 5 ]) param [ 1 ] ) != 1 )) then { 
		_marker setMarkerSizeLocal ( _x param [ 5 ] );
	}; 

	if( ( ( _x param [ 6 ] ) != "" ) && ( ( _x param [ 7 ] ) != "" ) ) then { 
		_marker setMarkerShapeLocal ( _x param [ 6 ] ); 
		_marker setMarkerBrushLocal ( _x param [ 7 ] ); 
	}; 
	
	_marker setMarkerDirLocal ( _x param [ 8 ] ); 
	false; 
} count ( getArray( missionConfigFile >> "MapConfig" ) param [ 1 ] );
