if (!hasInterface) exitWith {}; private["_display","_titel","_text","_menue"]; disableSerialization; if(dialog) then {closeDialog 0; uiSleep 0.1}; createDialog "zero_var_gangsys"; _display = findDisplay 3100; if (isNull _display) exitWith {}; _titel = _display displayCtrl 3105; _text = _display displayCtrl 3102; _menue = _display displayCtrl 3103; _titel ctrlSetStructuredText parseText format["<t align='center' size='1.5'>Gang-Managementsystem</t>"]; _text ctrlSetStructuredText parseText format[ "
	<t align='center'>Hallo und Willkommen</t><br/>
	<t align='center'>beim Amt für Gruppierungen.</t><br/>
	<t align='center'>Hier kannst du:</t><br/>
	<t align='center'></t><br/>
	<t align='center'>- Überprüfen, ob ein Gangname noch frei ist</t><br/>
	<t align='center'></t><br/>
	<t align='center'>- Ganglisten abrufen (kostenpflichtig)</t><br/>
	<t align='center'></t><br/>
	<t align='center'>- Eine temporäre Gang gründen (kostenpflichtig)</t><br/>
	<t align='center'></t><br/>
	<t align='center'>- Deine eigene permanente Gang gründen (kostenpflichtig)</t><br/>
	<t align='center'></t><br/>
	<t align='center'>-------------------------------------------------------------------------------------------</t><br/>
	<t align='center'>Benutze den Doppelklick um deine Auswahl zu starten</t><br/>
	" ];
lbClear _menue; { _menue lbAdd _x; _menue lbSetData [(lbSize _menue)-1,_x]; } forEach ["Gangname überprüfen","Ganglisten einsehen","Temporäre Gang erstellen","Permanente Gang erstellen"];
