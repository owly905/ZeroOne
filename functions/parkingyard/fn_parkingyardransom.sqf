if (!hasInterface) exitWith {}; private ["_dataArr","_vehicle","_insurance","_vid","_pid","_retrievePrice","_configs","_tmpArray","_tmpVehicle"]; if(diag_tickTime - zero_var_allowedToUnimpound < 10) exitWith {"Du kannst nur alle 10 Sekunden ein Fahrzeug freikaufen!" call zero_fnc_msg;}; disableSerialization; if(lbCurSel 2804 isEqualTo -1) exitWith {(localize "STR_Global_NoSelection") call zero_fnc_msg;}; _dataArr = call compile format["%1",(lbData[2804,(lbCurSel 2804)])]; _vehicle = _dataArr select 0; _insurance = switch (_dataArr select 3) do { case 0: {false}; case 1: {true}; }; _vid = lbValue[2804,(lbCurSel 2804)]; _pid = getPlayerUID player; if(isNil "_vehicle") exitWith {(localize "STR_Garage_Selection_Error") call zero_fnc_msg;}; _retrievePrice = getNumber(missionConfigFile >> "zero_CfgVehicles" >> _vehicle >> "garage_sell"); _configs = getArray(missionConfigFile >> "zero_VehicleShops" >> "kart_shop" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "civ_car" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "civ_truck" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "civ_air" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "civ_ship" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "reb_car" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "reb_air" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "reb_jet" >> "vehicles") + getArray(missionConfigFile >> "zero_VehicleShops" >> "gang_car" >> "vehicles"); { if(_vehicle == (_x select 0)) exitWith { _retrievePrice = round((_x select 1) * 1.5 * 0.2); };
}forEach _configs; if(([2, 0] call zero_fnc_Z0Check) < _retrievePrice) exitWith {(format[(localize "STR_Garage_CashError"),[_retrievePrice] call zero_fnc_numberText]) call zero_fnc_msg;}; [0, ([2, 0] call zero_fnc_Z0Check) - _retrievePrice] call zero_fnc_Z0Check; zero_var_allowedToUnimpound = diag_tickTime; [[_vid,_pid],"zero_fnc_updateImpoundedVehicle",zero_var_HC1_owner,false] call zero_fnc_sendPacket; _tmpArray = []; { if (_x select 0 != _vid) then { _tmpArray pushBack _x; }; } forEach zero_var_impoundedVehicles; zero_var_impoundedVehicles = _tmpArray; if(_vehicle isKindOf "Air") then { private _index = [_vehicle,zero_var_airVehicles] call zero_fnc_findIndex; if(_index != -1) then { _tmpVehicle = zero_var_airVehicles select _index; _tmpVehicle set[11,0]; zero_var_airVehicles set[_index,_tmpVehicle]; }; }else{ if(_vehicle isKindOf "Ship") then { private _index = [_vehicle,zero_var_shipVehicles] call zero_fnc_findIndex; if(_index != -1) then { _tmpVehicle = zero_var_shipVehicles select _index; _tmpVehicle set[11,0]; zero_var_shipVehicles set[_index,_tmpVehicle]; }; }else{ private _index = [_vehicle,zero_var_carVehicles] call zero_fnc_findIndex; if(_index != -1) then { _tmpVehicle = zero_var_carVehicles select _index; _tmpVehicle set[11,0]; zero_var_carVehicles set[_index,_tmpVehicle]; }; }; }; closeDialog 0; [format ["UNIMPOUND: %1 (%2, %3) hat %4 freigekauft. %5", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, getText(missionConfigFile >> "zero_CfgVehicles" >> _vehicle >> "logname"),if(_insurance) then {"(mit Versicherung)"}else{""}]] call zero_fnc_zoLog; [format["Dein(e) %1 steht in Kürze wieder in deiner Garage bereit!",getText(configFile >> "CfgVehicles" >> _vehicle >> "displayName")],1] call zero_fnc_msg; [1] call zero_fnc_updatePartial;