if (!hasInterface) exitWith {}; 
private["_UInamespaceWhitelist","_clearUInamespace","_event","_namespaceId","_namespaceEvent","_data","_itemId"]; 
enableSaving [false, false]; 
"bis_fnc_MP_packet" addPublicVariableEventHandler {};

{ 
	_event = _x; 
	_namespaceId = "BIS_stackedEventHandlers_"; 
	_namespaceEvent = _namespaceId + _event; 
	_data = missionNamespace getVariable [_namespaceEvent, []]; 
	{ 
		_itemId = _x param[0,"",[""]]; 
		[_itemId,_event] call bis_fnc_removeStackedEventHandler; 
	} forEach _data; 
} forEach ["oneachframe", "onpreloadstarted", "onpreloadfinished", "onmapsingleclick", "onplayerconnected", "onplayerdisconnected"];

inGameUISetEventHandler ["PrevAction",""];
inGameUISetEventHandler ["NextAction",""];
private _fnc_action = "	if((count _this) isEqualTo 0) exitWith {true};
					   	private _action = toLower(_this select 3);
					   	switch (_action) do {
							case ('getout');
							case ('eject'): {
		    					if (player getVariable['zero_var_restrained',false] && {isNil 'zero_var_remoteAction'}) exitWith {
		        					'Du kannst nicht aussteigen wenn du gefesselt bist!' call zero_fnc_msg;
			    					true;
	       						};
            					if(toLower((assignedVehicleRole player) select 0) == 'driver' && {local (vehicle player)} ||
                				((vehicle player) isKindOf 'Air' && {toLower(assignedVehicleRole(player) select 0) find 'turret' != -1}
                				&& {(assignedVehicleRole(player) select 1) isEqualTo [0]} && {count(crew(vehicle player)) isEqualTo 1})) then {
                					vehicle player engineOn false;
            					};
								zero_var_lastVehicle = nil;
							};
							case ('movetocargo');
							case ('movetocommander');
							case ('movetodriver');
							case ('movetogunner');
							case ('movetopilot');
							case ('movetoturret'): {
								'Bitte steige aus, um dich auf einen anderen Platz zu setzen!' call zero_fnc_msg;
								true;
							};
							case ('getindriver');
							case ('getincargo');
							case ('getinturret');
							case ('getinpilot');
							case ('moveincargo');
							case ('getin'): {
							    zero_var_lastVehicle = (_this select 0);
							    (_this select 0) removeAllEventHandlers 'HandleDamage';
							    (_this select 0) addEventHandler['HandleDamage',{_this call zero_fnc_handleDamageVehicle;}];
							    (_this select 0) removeAllEventHandlers 'Engine';
							    (_this select 0) addEventHandler['Engine',{_this call zero_fnc_engineHandler;}];
								if (zero_var_is_arrested && {zero_var_jail_stones < zero_var_jail_stones_needed}) exitWith {
									'Du bist im Gefängnis und kannst nicht in das Fahrzeug einsteigen!' call zero_fnc_msg;
									true;
								};
								if (player getVariable['zero_var_restrained',false]) then {
       						        'Du kannst in kein Fahrzeug einsteigen wenn du gefesselt bist!' call zero_fnc_msg;
                					true;
            					};
							};
							default {};
						};";

inGameUISetEventHandler ["Action", _fnc_action];
player removeAllMPEventHandlers "MPHit";
player removeAllMPEventHandlers "MPKilled";
player removeAllMPEventHandlers "MPRespawn";
removeAllMissionEventHandlers "draw3D";
removeAllMissionEventHandlers "Loaded";
removeAllMissionEventHandlers "Ended"; 
onEachFrame {};
(findDisplay 46) displayRemoveAllEventHandlers "KeyDown";
(findDisplay 46) displayRemoveAllEventHandlers "KeyUp";
(findDisplay 46) displayRemoveAllEventHandlers "MouseButtonDown";
(findDisplay 46) displayRemoveAllEventHandlers "MouseButtonUp";

[] spawn {
	while {!zero_var_session_completed} do { 
		uiSleep 2;
		{
			if ((_x select 0) == "RscSpectator") exitWith {
				["noslot"] call bis_fnc_endMission; 
				zero_var_paycheck = 0; 
				zero_var_session_completed = true; 
			}; 
		} forEach diag_activeSQFScripts; }; 
};
