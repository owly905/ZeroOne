if (isServer) exitWith {}; private["_uid","_ret"]; _uid = param[0,"",[""]]; if(_uid isEqualTo "") exitWith {false};
_ret = false; { if(getPlayerUID _x == _uid) exitWith {_ret = true;}; } forEach playableUnits; _ret;
