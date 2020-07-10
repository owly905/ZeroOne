if (!hasInterface) exitWith {}; private ["_gang","_group","_id","_gangName","_gruender","_display","_titel","_text","_unten","_ok","_eingabe","_fehler","_close","_exit"]; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;}; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; _id = _gang select 0; _gangName = _gang select 1; _gruender = _gang select 2; if !((getPlayerUID player) == _gruender) exitWith {"Du bist nicht der Owner" call zero_fnc_msg;}; disableSerialization; createDialog "zero_var_gangerstellen"; _display = findDisplay 3200; if (isNull _display) exitWith {}; _text = _display displayCtrl 3201; _titel = _display displayCtrl 3202; _ok = _display displayCtrl 3203; _ok ctrlSetText "Überprüfen"; _ok buttonSetAction "zero_var_gangWeiter = true;"; _unten = _display displayCtrl 3204; _close = _display displayCtrl 3205; _titel ctrlSetStructuredText parseText format["<t align='center' size='1'>Zum Auflösen der Gang bitte den Namen eingeben</t>"]; _unten ctrlSetStructuredText parseText format["<t align='center' size='1'>Gib deinen Gangnamen an und bestätige!</t>"]; _exit = false; while {true} do { _fehler = nil; _text ctrlSetText ""; _eingabe = ""; zero_var_gangWeiter = false; waitUntil {zero_var_gangWeiter || isNull (findDisplay 3200)}; zero_var_gangWeiter = nil; if (isNull (findDisplay 3200)) exitWith {_exit = true;}; _eingabe = ctrlText _text; if (_eingabe isEqualTo "") then { _fehler = true;
_unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Das Eingabefeld ist leer.</t>"]; }else { if (_eingabe isEqualTo _gangName) exitWith {}; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Der Gangname ist %1 nicht %2 !</t>",_gangName,_eingabe]; _fehler = true; }; if (isNil "_fehler") exitWith{}; }; if (_exit) exitWith {}; if (typeName (_gang select(count _gang -1)) != "BOOL") then { [[clientOwner,1,[_id,_gangName]],"zero_fnc_newDeleteGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#0BDA51'>Gang wird gelöscht...</t>"]; _ok ctrlEnable false; _close ctrlEnable false; waitUntil {!isNil "zero_var_gangReturn"}; if (!(zero_var_gangReturn isEqualTo [])) then { _fehler = true; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Es gab ein Fehler beim Löschen der Gang %1 !</t>",_gangName]; _ok ctrlEnable true; _close ctrlEnable true; }; zero_var_gangReturn = nil; }; if (isNil "_fehler") then { while {dialog} do {closeDialog 0;}; [format ["Die Gang %1 wurde erfolgreich aufgelöst",_gangName],1] call zero_fnc_msg; _group setVariable["zero_var_gang",nil,true]; _group setVariable ["zero_var_gang_buffs",nil,true]; [[true],"zero_fnc_refreshBuffs",(units _group)] call zero_fnc_sendPacket; if(!(isNil "zero_var_gangHouse")) then {[""] call zero_fnc_gangHauptquatierUpdate;}; [[_group],"zero_fnc_gangAufgeloest",(units _group),false] call zero_fnc_sendPacket; };
