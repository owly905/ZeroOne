if (!hasInterface) exitWith {}; params ["_cmd","_house"]; _house setVariable ["zero_var_furniture_allocated",true]; if (zero_var_furniture_requestInProgress) exitWith { (localize "STR_House_furniture_systemBusy") call zero_fnc_msg; }; zero_var_furniture_requestInProgress = true; private _index = zero_var_furniture_allocationBuffers find _house; private _buffer = []; zero_var_furniture_dataFromServer = nil; [[_house, clientOwner, getPlayerUID player, name player, profileName],"zero_fnc_fetchHouseFurniture",zero_var_HC1_owner,false] call zero_fnc_sendPacket; waitUntil {sleep 0.1; (!isNil "zero_var_furniture_dataFromServer");}; if (_cmd == "editor") then { (findDisplay 175462) setVariable ["zero_var_limit",(zero_var_furniture_dataFromServer select 1)]; }; private _blacklist = [ "Land_LampStreet_small_F", "Land_LampHalogen_F", "Land_Flush_Light_yellow_F", "Land_Flush_Light_red_F", "Land_LampAirport_F", "Land_LampShabby_F", "Land_LampDecor_F", "Land_LampStreet_F", "Land_runway_edgelight_blue_F", "Land_runway_edgelight", "Land_Flush_Light_green_F", "Land_PortableLight_double_F", "Land_Device_assembled_F" ]; (getPosASL _house) params ["_hx","_hy","_hz"]; { _x params ["_hash","_pX","_pY","_pZ","_dir"]; private _className = getText ((missionConfigFile >> "zero_Furniture" >> "furnitureItems" >> ((getArray (missionConfigFile >> "zero_Furniture" >> "furnitureItems" >> "items")) select _hash)) >> "className");
private _disabled = (getArray (missionConfigFile >> "zero_Furniture" >> "furnitureItems" >> "disabledItems")); if (_className != "" && (!(_className in _disabled))) then { private _obj = [_className,[0,0,0]] call zero_fnc_createVehicleLocal; if ((getNumber (configFile >> "CfgVehicles" >> _className >> "maximumLoad")) > 0) then { clearBackpackCargo _obj; clearMagazineCargo _obj; clearWeaponCargo _obj; clearItemCargo _obj; }; _obj enableSimulation (if (_className in _blacklist) then {true} else {false}); _obj setDir _dir; _pX = _hx + _pX; _pY = _hy + _pY; _pZ = _hz + _pZ; [_obj, [_pX,_pY,_pZ]] call zero_fnc_setPosASL; _buffer pushBack _obj; if (_cmd == "editor") then { (_this select 2) pushBack _obj; _obj disableCollisionWith player; }; }; } forEach (zero_var_furniture_dataFromServer select 0); zero_var_furniture_dataFromServer = nil; if (_index == -1) then { zero_var_furniture_allocationBuffers pushBack _house; zero_var_furniture_allocationBuffers pushBack _buffer; } else { {[_x] call zero_fnc_deleteVehicle} forEach (zero_var_furniture_allocationBuffers select (_index + 1)); zero_var_furniture_allocationBuffers set [_index + 1,_buffer]; }; zero_var_furniture_requestInProgress = false;