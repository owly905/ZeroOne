if (!hasInterface) exitWith {}; private["_corpse"]; _corpse = param[0,objNull,[objNull]]; if(isNull _corpse || alive _corpse) exitWith {};
_corpse hideObject true; [_corpse] call zero_fnc_deleteVehicle;
