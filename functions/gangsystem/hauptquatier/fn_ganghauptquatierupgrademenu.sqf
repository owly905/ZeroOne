if (!hasInterface) exitWith {}; private["_group","_gang","_gangHouse","_gangHousePos","_display","_upgrades","_titel","_list","_button","_button2","_upgrade"]; disableSerialization; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;}; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; _gangHouse = _gang select 6; _gangHousePos = _gangHouse select 0; _upgrades = _gangHouse select 1; if(_gangHousePos isEqualTo []) exitWith {"Es ist kein Ganghauptquartier eingetragen" call zero_fnc_msg;}; if(((group player) getVariable["zero_var_gangHausInUse",objNull]) != player) exitWith {"Jemand anderes greift auf das Hausmenü zu!" call zero_fnc_msg;}; createDialog "zero_var_ganglist"; _display = findDisplay 3300; if (isNull _display) exitWith {}; _titel = _display displayCtrl 3301; _list = _display displayCtrl 3302; lbClear _list; _button = _display displayCtrl 3303; _button2 = _display displayCtrl 3304; _titel ctrlSetStructuredText parseText "<t align='left' size='1.3'>Verfügbare Upgrades:</t>"; _button ctrlSetText "Auswählen"; _button buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_gangHauptquatierUpgrade;";
_button2 ctrlSetText "HQ löschen"; _button2 buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_gangHauptquatierReset;"; _upgrade = [ "ATM", "Markt", "General Store", "Medic", "Garage", "Garagen Upgrade (LKW)", "Garagen Upgrade (Gepanzert)" ]; { if(_x in _upgrades) then { _list lbAdd format["%1 - vorhanden",_x]; _list lbSetData[(lbSize _list)-1, _x]; _list lbSetColor [(lbSize _list)-1, [0,1,0,1]]; }else{ if(_x!="Garagen Upgrade" && _x !="Garagen Upgrade (LKW)" && _x!="Garagen Upgrade (Gepanzert)") then{ _list lbAdd _x; _list lbSetData[(lbSize _list)-1, _x]; }; if(_x=="Garagen Upgrade (LKW)" && "Garage" in _upgrades) then { _list lbAdd _x; _list lbSetData[(lbSize _list)-1, _x]; }; if(_x=="Garagen Upgrade (Gepanzert)" && "Garage" in _upgrades) then { _list lbAdd _x; _list lbSetData[(lbSize _list)-1, _x]; }; }; } forEach _upgrade; if("Garage" in _upgrades) then { ["Du kannst den Spawnpunkt der Garage ändern, wenn du nochmals die Garage auswählst",1] call zero_fnc_msg;};