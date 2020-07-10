if (!hasInterface) exitWith {}; params [["_string", "", [""]]]; if (_string isEqualTo "") exitWith {false};
!({!(_x isEqualTo "0") && {parseNumber _x isEqualTo 0}} count ([_string, ""] call zero_fnc_splitString) > 0)
