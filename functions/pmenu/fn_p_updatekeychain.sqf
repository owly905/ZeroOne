if (!hasInterface) exitWith {}; private["_dialog","_near","_near_units"]; disableSerialization; if (!isNil "zero_var_updateCD") exitWith { titleRsc ["zero_var_introtext","PLAIN"]; (((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Nur alle 10Sek. Bitte."); }; zero_var_updateCD = true; [] spawn { uiSleep 10; zero_var_updateCD = nil; }; _dialog = findDisplay 2700; _near = _dialog displayCtrl 2702; lbClear _near; _near_units = []; if(!isNull (objectParent player)) then { { if(player != _x && {!isObjectHidden _x}) then { _near_units pushBackUnique _x; }; } forEach crew(vehicle player); { if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then { _near lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x]; _near lbSetData [(lbSize _near)-1,str(_x)]; }; } forEach _near_units;
if(count(crew(vehicle player))>1)then{ _near lbAdd "Schlüssel an alle Personen im Fahrzeug geben"; _near lbSetData [(lbSize _near)-1,"vehicle"]; } }else{ private _nearGroup=false; private _group = units(group player); { if(player distance _x < 10 && (vehicle _x) == _x && {!isObjectHidden _x}) then { _near_units pushBackUnique _x; }; if(_x in _group && _x != player) then { if(player distance _x < 100 && (vehicle _x) == _x && {!isObjectHidden _x}) then{ _nearGroup = true; }; }; } forEach playableUnits; { if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then { _near lbAdd format["%1 - %2",_x getVariable["zero_var_realname",name _x], side _x]; _near lbSetData [(lbSize _near)-1,str(_x)]; }; } forEach _near_units; if(_nearGroup) then{ _near lbAdd "Schlüssel an alle Gangmitglieder im Umkreis geben"; _near lbSetData [(lbSize _near)-1,"group"]; }; };