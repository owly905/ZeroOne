if (!hasInterface) exitWith {};
private ["_display","_text","_titel","_ok","_unten","_close","_mainTitle","_secondTitle"];
disableSerialization;
createDialog "zero_var_gangerstellen";
_display = findDisplay 3200;
if (isNull _display) exitWith {};
_text = _display displayCtrl 3201;
_text ctrlSetText "";
_titel = _display displayCtrl 3202;
_ok = _display displayCtrl 3203;
_ok ctrlSetText "Absenden";
_ok buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};
					 zero_var_allowedToRefresh = serverTime;
					 [] call zero_fnc_sendSupportRequest";
_unten = _display displayCtrl 3204;
_close = _display displayCtrl 3205;
_mainTitle = _display displayCtrl 3206;
_secondTitle = _display displayCtrl 3207;
_mainTitle ctrlSetText "Support Code einlösen";
_secondTitle ctrlSetText "Support Code einlösen";
_titel ctrlSetStructuredText parseText format["<t align='center' size='1'>Zum Einlösen des Codes bitte den Code eingeben</t>"];
_unten ctrlSetStructuredText parseText format["<t align='center' size='1'>Gib deinen Code an und bestätige!</t>"];
