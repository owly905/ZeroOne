if (!hasInterface) exitWith {}; private["_vehicle"]; if(dialog) exitWith {}; disableSerialization; _vehicle = param[0,objNull,[objNull]]; if(isNull _vehicle || !(_vehicle isKindOf "Car" || _vehicle isKindOf "Air" || _vehicle isKindOf "Ship") || !isNil "zero_var_trunk_open") exitWith {}; zero_var_trunk_open = true; [[0,_vehicle,player,[],clientOwner],"zero_fnc_trunk",zero_var_HC1_owner,false] call zero_fnc_sendPacket; waitUntil {!isNil "zero_var_sendtrunkre"}; zero_var_trunk_vehicle = zero_var_sendtrunkre; zero_var_sendtrunkre =nil; if ((typeName zero_var_trunk_vehicle) isEqualTo (typeName "")) exitWith {(localize "STR_MISC_VehInvUse") call zero_fnc_msg; zero_var_trunk_open = nil;
}; if(!createDialog "zero_var_TrunkMenu") exitWith {(localize "STR_MISC_DialogError") call zero_fnc_msg; zero_var_trunk_open = nil;}; if ((typeName zero_var_trunk_vehicle) isEqualTo (typeName true)) exitWith {closeDialog 0;zero_var_trunk_open = nil;}; _vehicle setVariable ["zero_var_localTrunk", zero_var_trunk_vehicle]; zero_var_trunkCar = _vehicle; [_vehicle] call zero_fnc_vehInventory; [_vehicle] spawn { _vehicle = _this select 0; waitUntil {isNull (findDisplay 3100) || !alive player}; [[1,_vehicle,player,zero_var_trunk_vehicle,clientOwner],"zero_fnc_trunk",zero_var_HC1_owner,false] call zero_fnc_sendPacket; zero_var_trunk_vehicle = nil; zero_var_trunk_open = nil; zero_var_trunkCar = nil; uiSleep 3; zero_var_trunk_in_use = nil; };