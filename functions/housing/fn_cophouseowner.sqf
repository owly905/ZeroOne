if (!hasInterface) exitWith {}; private["_house"]; _house = param[0,objNull,[objNull]]; if(isNull _house || !(_house isKindOf "House_F")) exitWith {}; if(isNil {(_house getVariable "zero_var_house_owner")}) exitWith {(localize "STR_House_Raid_NoOwner") call zero_fnc_msg;
}; [format["%1",(_house getVariable "zero_var_house_owner") select 1],1,localize "STR_House_Raid_Owner"] call zero_fnc_msg;
