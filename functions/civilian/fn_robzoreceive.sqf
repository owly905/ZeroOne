if (!hasInterface) exitWith {}; private["_cash","_player","_toLog"]; _cash = param[0,0,[0]]; _player = param[1,objNull,[objNull]]; if(_cash isEqualTo 0 || isNull _player) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]}; _toLog = format ["ROBBED: %1 (%2, %3) hat %4 von %5 (%6, %7) geraubt.", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, [_cash] call zero_fnc_numberText, _player getVariable["zero_var_realname",name _player], getPlayerUID _player, side _player];
[_toLog] call zero_fnc_zoLog; [1, ([3, 0] call zero_fnc_Z0Check) + _cash] call zero_fnc_Z0Check; titleText[format[localize "STR_Civ_Robbed",[_cash] call zero_fnc_numberText],"PLAIN"];
