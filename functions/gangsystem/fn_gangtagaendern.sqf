if (!hasInterface) exitWith {}; private["_display","_titel","_text","_unten","_ok","_fehler","_exit","_group","_gang","_gangTag","_action","_konto","_cancel","_chrByte","_allowed"]; disableSerialization; createDialog "zero_var_gangerstellen"; _display = findDisplay 3200; if (isNull _display) exitWith {}; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; if(typeName (_gang select(count _gang -1)) == "BOOL") exitWith {"Nicht für temporäre Gangs verfügbar!" call zero_fnc_msg;}; if(_group getVariable["zero_var_gangNameInUse",false]) exitWith {"Auf die Namensänderung wird bereits zugegriffen!" call zero_fnc_msg;}; _group setVariable["zero_var_gangNameInUse",true,true]; _titel = _display displayCtrl 3202; _text = _display displayCtrl 3201; _unten = _display displayCtrl 3204; _ok = _display displayCtrl 3203; _ok ctrlSetText "Überprüfen"; _ok buttonSetAction "zero_var_gangWeiter = true;"; _cancel = _display displayCtrl 3205; _cancel ctrlSetText "Abbrechen"; _titel ctrlSetStructuredText parseText format["<t align='center' size='1'>Bitte gib den gewünschten Gangtag ein.</t>"]; _unten ctrlSetStructuredText parseText format["<t align='center' size='1'>Es sind nur <br/> Buchstaben, Zahlen, Leerzeichen und beschränkte Sonderzeichen erlaubt!</t>"]; _exit = false; _gangTag = ""; while {true} do { _fehler = nil; zero_var_gangWeiter = false; _text ctrlSetText ""; _gangTag = ""; waitUntil {zero_var_gangWeiter || isNull (findDisplay 3200)}; zero_var_gangWeiter = nil; if (isNull (findDisplay 3200)) exitWith {_exit = true;}; _gangTag = ctrlText _text; if (_gangTag isEqualTo "") then { _fehler = true; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Das Eingabefeld ist leer.</t>"]; }else { if ((count _gangTag) > 5) then { _fehler = true; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Der Gangtag ist länger als 5 Zeichen</t>"];
}else{ _chrByte = toArray (_gangTag); _allowed = toArray("!#$%&()*+,-./0123456789<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]_abcdefghijklmnopqrstuvwxyz| "); { if !(_x in _allowed) exitWith { _fehler = true; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Das Zeichen %1 ist im Gangtag nicht erlaubt!</t>",toString [_x]]; } }forEach _chrByte; }; }; if (isNil "_fehler") then { _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#EDF5F5'>Der Gangtag %1 wird überprüft!</t>",_gangTag]; [[clientOwner,1,_gangTag],"zero_fnc_checkGangnameTag",zero_var_HC1_owner,false] call zero_fnc_sendPacket; waitUntil {!isNil "zero_var_gangReturn"}; if (zero_var_gangReturn isEqualTo []) then { _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#0BDA51'>Der Gangtag %1 ist noch frei!</t>",_gangTag]; } else { _fehler = true; _unten ctrlSetStructuredText parseText format["<t align='center' size='1' color='#DC143C'>Der Gangtag %1 ist bereits belegt!</t>",_gangTag]; }; zero_var_gangReturn = nil; }; if (isNil "_fehler") exitWith{}; }; if(_exit) exitWith {closeDialog 0;_group setVariable["zero_var_gangNameInUse",nil,true];}; _action = [ parseText format["Möchtest du %1€ für das Ändern des Gangtags in <t color='#ffff00'>%2</t> bezahlen?",[5000000] call zero_fnc_numberText,_gangTag], "Gangtag ändern", localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage; if(!_action) exitWith {closeDialog 0;_group setVariable["zero_var_gangNameInUse",nil,true];}; _konto = _gang select 5; if(_konto < 5000000) exitWith {(format["Du hast nicht genug Geld auf dem Gangkonto. Es fehlen dir %1",[5000000 - _konto] call zero_fnc_numberText]) call zero_fnc_msg; closeDialog 0}; _gang set[5,_konto - 5000000]; [[clientOwner,7,[_gang select 0,_gangTag,_gang select 5]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket; _gang set[7,_gangTag]; _group setVariable["zero_var_gang",_gang,true]; _group setVariable["zero_var_gangNameInUse",nil,true]; closeDialog 0; [] spawn zero_fnc_gangUpdateGanginfo;