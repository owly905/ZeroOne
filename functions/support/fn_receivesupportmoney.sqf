if (!hasInterface) exitWith {};
private["_val"];
_val = param[0,0,[0]];

if(_val isEqualTo 0) exitWith {
	"Der Code ist ungültig!" call zero_fnc_msg;
};

[0, ([2, 0] call zero_fnc_Z0Check) + _val] call zero_fnc_Z0Check;
[format["Du hast %1€ erhalten. Denke dran abzuspeichern!",[_val] call zero_fnc_numberText],1] call zero_fnc_msg;
[format ["MONEY LOG: %1 (%2, %3) hat %4 vom Support erhalten.", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, [_val] call zero_fnc_numberText]] call zero_fnc_zoLog;
