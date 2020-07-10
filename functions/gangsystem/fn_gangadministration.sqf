if (!hasInterface) exitWith {};
 private["_display","_titel","_text","_menue","_fil","_gang","_gruender","_rang","_member","_index","_tempGang","_auswahl","_isOwner","_info"];
 disableSerialization;
 if(dialog) then {closeDialog 0;
 uiSleep 0.1};
 createDialog "zero_var_gangverwaltung";
 _display = findDisplay 3100;
 if (isNull _display) exitWith {};
 _titel = _display displayCtrl 3101;
 _text = _display displayCtrl 3102;
 _menue = _display displayCtrl 3103;
 _info = _display displayCtrl 3104;
 _titel ctrlSetStructuredText parseText format["<t align='center' size='1.5'>Internes Gang-Managementsystem</t>"];
 _gang = (group player) getVariable ["zero_var_gang",[]];
 if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;
 closeDialog 0;
};
 _tempGang = if(typeName (_gang select(count _gang -1)) == "BOOL") then {true} else {false};
 _gruender = _gang select 2;
 _member = _gang select 3;
 if(count _member > 0) then { _index = [getPlayerUID player,_member] call zero_fnc_findIndex;
 if(_index != -1) then { _rang = (_member select _index) select 1;
 }else{ _rang = -1;
 };
 };
 _isOwner = if(_gruender == getPlayerUID player) then {true} else {false};
 _fil = [];
 _auswahl = "<br/><t align='center'>- Aus deiner Gang austreten</t><br/>";
 _fil pushBack "Austreten";
 if(_rang > 0 || _isOwner) then {_auswahl = _auswahl + "<br/><t align='center'>- Mitglieder verwalten</t><br/>";
 _fil pushBack "Mitglieder verwalten";
};
 if(_rang > 1 || _isOwner) then {_auswahl = _auswahl + "<br/><t align='center'>- Buffs verwalten</t><br/>";
 _fil pushBack "Buffs verwalten";

};
 if((_rang > 3 || _isOwner) && (!_tempGang)) then { _auswahl = _auswahl + "<br/><t align='center'>- Hauptquartier verwalten</t><br/>" + "<br/><t align='center'>- Gangkonto verwalten</t><br/>";
 _fil pushBack "Hauptquartier verwalten";
 _fil pushBack "Gangkonto verwalten";
 };
 if((_rang > 4 || _isOwner) && (!_tempGang)) then {_auswahl = _auswahl + "<br/><t align='center'>- Gangname ändern</t><br/>";
 _fil pushBack "Gangname ändern";
};
 if(_gruender == getPlayerUID player) then {_auswahl = _auswahl + "<br/><t align='center'>- Gang auflösen</t><br/><br/>";
 _fil pushBack "Gang auflösen";
};
 if((group player) getVariable["zero_var_gangAnnounce",false]) then {_auswahl = _auswahl + "<br/><t align='center'>- Gangeroberung beteiligte Gangs anzeigen</t><br/>";
 _fil pushBack "Gangeroberung";
};
 if (!isNil "zero_var_exploitationtime") then {_auswahl = _auswahl + "<br/><t align='center'>- Virtus Zone beteiligte Gangs anzeigen</t><br/>";
 _fil pushBack "Virtus Zone";
};
 _text ctrlSetStructuredText parseText format[ "
	<t align='center'>Hallo und Willkommen</t><br/>
	<t align='center'>beim internen Gang-Managementsystem.</t><br/>
	<t align='center'>Hier kannst du:</t><br/>
	<br/>
	%1
	<t align='center'>-------------------------------------------------------------------------------------------</t><br/>
	<t align='center'>Benutze den Doppelklick um deine Auswahl zu starten</t><br/>
	", _auswahl ];
 lbClear _menue;
 { _menue lbAdd _x;
 _menue lbSetData [(lbSize _menue)-1,_x];
 if(_x isEqualTo "Gang auflösen") then { _menue lbSetColor [(lbSize _menue)-1, [1, 0, 0, 1]];
 } } forEach _fil;
 [] call zero_fnc_gangUpdateGanginfo;

