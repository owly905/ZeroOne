disableSerialization; if ( !hasInterface || ( playerSide isEqualTo civilian ) || ( playerSide isEqualTo east ) ) exitWith {}; private["_seconds","_minutes","_hours","_position","_online"]; if( ( lbData[4004,lbCurSel 4004] ) isEqualTo "Null" ) exitWith {}; private _info = call compile format["%1", lbData[4004,lbCurSel 4004]]; zero_var_current_dispatch = _info; ((findDisplay 4000) displayCtrl 4010) ctrlShow false; if (count(_info select 2) != 0) then { _position = floor ( (_info select 2) distance player ); }; _seconds = floor( serverTime - (_info select 3) ); if (_seconds >= 60) then {_minutes = floor (_seconds / 60); _seconds = (_seconds - (60 * _minutes));} else {_minutes = 0;}; if (_minutes >= 60) then {_hours = floor (_minutes / 60); _minutes = (_minutes - (60 * _hours));} else {_hours = 0;}; if (_seconds <= 9) then {_seconds = format["0%1",_seconds];}; if (_minutes <= 9) then {_minutes = format["0%1",_minutes];}; if (_hours <= 9) then {_hours = format["0%1",_hours];}; ((findDisplay 4000) displayCtrl 4005) ctrlShow true; ((findDisplay 4000) displayCtrl 4006) ctrlShow true; ((findDisplay 4000) displayCtrl 4008) ctrlShow true; ((findDisplay 4000) displayCtrl 4009) ctrlShow true; ((findDisplay 4000) displayCtrl 4011) ctrlShow true; ((findDisplay 4000) displayCtrl 4013) ctrlShow true; ((findDisplay 4000) displayCtrl 4014) ctrlShow true; ((findDisplay 4000) displayCtrl 4015) ctrlShow true; ((findDisplay 4000) displayCtrl 4016) ctrlShow true; ((findDisplay 4000) displayCtrl 4017) ctrlShow true; lbClear ((findDisplay 4000) displayCtrl 4013); ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Custom_Message"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Units_Way"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Wait"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Already_There"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Terrorists"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Land_Granted"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Land_Denied"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_5W";
((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_WWWWW"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Server_Rules"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Longer"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Support"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Case_Med"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Case_Cop"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Case_Time"; ((findDisplay 4000) displayCtrl 4013) lbAdd localize "STR_CELL_Chuck_Norris"; ((findDisplay 4000) displayCtrl 4013) lbSetCurSel 0; _online = "Offline"; if ([_info select 4] call zero_fnc_isUIDActive) then {_online = "Online";}; if(_online == "Offline") then {((findDisplay 4000) displayCtrl 4014) ctrlEnable false; ((findDisplay 4000) displayCtrl 4014) ctrlSetTooltip "Der Spieler ist offline, du kannst keine Antwort senden.";}; ((findDisplay 4000) displayCtrl 4007) ctrlShow true; ((findDisplay 4000) displayCtrl 4007) ctrlSetText format[localize "STR_PM_DispatchCenter_Query_Name", _info select 1, _online]; ((findDisplay 4000) displayCtrl 4008) ctrlSetText format[localize "STR_PM_DispatchCenter_Query_Time", _hours, _minutes, _seconds]; if (count(_info select 2) != 0) then { [((findDisplay 4000) displayCtrl 4006),0,0.03,_info select 2] call zero_fnc_setMapPosition; ((findDisplay 4000) displayCtrl 4010) ctrlShow true; if ((getMarkerColor format["%1_%2_%3_dispatch", _info select 1, _info select 3, _info select 4]) == "") then { ((findDisplay 4000) displayCtrl 4010) ctrlSetText localize "STR_PM_DispatchCenter_Mark_on_Map"; } else { ((findDisplay 4000) displayCtrl 4010) ctrlSetText localize "STR_PM_DispatchCenter_Mark_on_Map_del"; }; if (call MAV_gps_fnc_isNavigationRunning) then { ((findDisplay 4000) displayCtrl 4017) ctrlSetText "Navigation beenden"; } else { ((findDisplay 4000) displayCtrl 4017) ctrlSetText "Navigation starten"; }; ((findDisplay 4000) displayCtrl 4009) ctrlSetText format[localize "STR_PM_DispatchCenter_distance", _position]; } else { ((findDisplay 4000) displayCtrl 4009) ctrlSetText localize "STR_PM_DispatchCenter_distance_unknown"; }; ( (findDisplay 4000) displayCtrl 4005 ) ctrlSetStructuredText parseText format[ localize "STR_PM_DispatchCenter_message", _info select 0 ];