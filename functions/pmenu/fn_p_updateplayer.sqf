if (!hasInterface) exitWith {}; private["_dialog","_near_i","_near","_near_units"]; disableSerialization; if (!isNil "zero_var_updateCD") exitWith { titleRsc ["zero_var_introtext","PLAIN"]; (((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Nur alle 10Sek. Bitte."); }; zero_var_updateCD = true; [] spawn { uiSleep 10; zero_var_updateCD = nil; }; _dialog = findDisplay 2001; _near_i = _dialog displayCtrl 2023; _near = _dialog displayCtrl 2022; lbClear _near; lbClear _near_i; _near_units = []; if(!isNull (objectParent player)) then { { if(player != _x && {!isObjectHidden _x}) then { _near_units pushBackUnique _x; }; } forEach crew(vehicle player); { if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then { _near lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x]; _near lbSetData [(lbSize _near)-1,str(_x)]; _near_i lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x];
_near_i lbSetData [(lbSize _near)-1,str(_x)]; }; } forEach _near_units; }else{ { if(player distance _x < 10 && (vehicle _x) == _x && {!isObjectHidden _x}) then { _near_units pushBackUnique _x; }; } forEach playableUnits; { if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then { _near lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x]; _near lbSetData [(lbSize _near)-1,str(_x)]; _near_i lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x]; _near_i lbSetData [(lbSize _near)-1,str(_x)]; }; } forEach _near_units; }; titleRsc ["zero_var_introtext","PLAIN"]; [format ["UMGEBUNGSCHECKER: %1 (%2, %3) hat die Umgebung gecheckt. Spieler in der Umgebung: %4", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, _near_units]] call zero_fnc_zoLog; (((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Umgebung aktualisiert!");
