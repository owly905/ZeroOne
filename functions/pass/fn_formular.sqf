if (!hasInterface) exitWith {}; disableSerialization; private ["_ui","_ende","_fehler","_checkfehler","_e0t","_e2t","_e3t","_e4t","_e5t","_e6t","_e7t","_e8t","_l0t","_l1t","_l2t","_l3t","_l4t","_l5t","_l6t","_l7t","_new","_first","_z0","_z1","_z2","_z3","_z4","_z5","_z6","_z7","_z8","_z9","_z10","_z11","_z12","_z13","_z14","_z15","_z16","_z17","_z18","_z19","_b0","_b1","_e0","_e2","_e3","_e4","_e5","_e6","_e7","_e8","_l0","_l1","_l2","_l3","_l4","_l5","_l6","_l7","_gro","_re","_allowed","_tel","_chrByte","_plz"]; _new = param [0,false,[true]]; _first = param [1,false,[true]]; createDialog "zero_var_formular"; _ui = (findDisplay 1000); zero_var_check = false; _z0 = _ui displayCtrl 1100; _z1 = _ui displayCtrl 1101; _z2 = _ui displayCtrl 1102; _z3 = _ui displayCtrl 1104; _z4 = _ui displayCtrl 1103; _z5 = _ui displayCtrl 1107; _z6 = _ui displayCtrl 1108; _z7 = _ui displayCtrl 1109; _z8 = _ui displayCtrl 1110; _z9 = _ui displayCtrl 1111; _z10 = _ui displayCtrl 1112; _z11 = _ui displayCtrl 1113; _z12 = _ui displayCtrl 1114; _z13 = _ui displayCtrl 1115; _z14 = _ui displayCtrl 1116; _z15 = _ui displayCtrl 1117; _z16 = _ui displayCtrl 1118; _z17 = _ui displayCtrl 1119; _z18 = _ui displayCtrl 1105; _z19 = _ui displayCtrl 1106; _b0 = _ui displayCtrl 1600; _b1 = _ui displayCtrl 1601; _e0 = _ui displayCtrl 1400; _e1 = _ui displayCtrl 1401; if (playerSide isEqualTo west && _new) then { _e0 ctrlShow false; _e0 = _e1; }else{ _e1 ctrlShow false; }; _e2 = _ui displayCtrl 1402; _e3 = _ui displayCtrl 1403; _e4 = _ui displayCtrl 1404; _e5 = _ui displayCtrl 1405; _e6 = _ui displayCtrl 1406; _e7 = _ui displayCtrl 1407; _e8 = _ui displayCtrl 1408; _l1 = _ui displayCtrl 2400; _l2 = _ui displayCtrl 2401; _l3 = _ui displayCtrl 2402; _l4 = _ui displayCtrl 2403; _l0 = _ui displayCtrl 2804; _l5 = _ui displayCtrl 14010; _l6 = _ui displayCtrl 14011; _l7 = _ui displayCtrl 14012; switch (zero_var_playerSide) do { case west : { _z18 ctrlSetStructuredText parseText format["<t size='%1' align='center' color='#DC143C'>%2</t>", 0.6 * safeZoneH, "Registrieren Sie Ihren Namen für den Polizeidienst<br/>Melden Sie sich bitte an.<br/>Nachdem Sie das Formular ausgefüllt haben, überprüfen wir die Namensregistrierung und genehmigen diese." ]; }; case east : { _z18 ctrlSetStructuredText parseText format["<t size='%1' align='center' color='#DC143C'>%2</t>", 0.6 * safeZoneH, "Auch Rebellen brauchen Regeln.<br/>Registrieren Sie bitte hier Ihren permanenten Namen als Rebelle.<br/>Nachdem Sie das Formular ausgefüllt haben, überprüfen wir die Namensregistrierung und genehmigen diese." ]; }; case independent : { _z18 ctrlSetStructuredText parseText format["<t size='%1' align='center' color='#DC143C'>%2</t>", 0.6 * safeZoneH, "Namensregistrierung als Feuerwehr-Mitglied <br/>Melden Sie sich bitte an.<br/>Nachdem Sie das Formular ausgefüllt haben, überprüfen wir die Namensregistrierung und genehmigen diese." ]; }; default { _z18 ctrlSetStructuredText parseText format["<t size='%1' align='center' color='#DC143C'>%2</t>", 0.6 * safeZoneH, "Anmeldeformular für eine Einbürgerung in Altis.<br/>Melden Sie sich bitte an.<br/>Nachdem Sie das Formular ausgefüllt haben, überprüfen wir die Namensregestrierung und genehmigen diese, <t underline='true'>sollte der Name noch nicht vergeben sein.</t>" ]; }; }; _z19 ctrlSetStructuredText parseText format["<t size='%1' align='center' color='#DC143C'>%2</t>", 0.8 * safeZoneH, "Bestätigen Sie bitte unten rechts ihre Angaben.<br/><t underline='true'>Bitte VERWENDEN SIE keine echten Daten!</t>" ]; _tel = format ["01%1%2%3%4%6%6%7%8",round (random 9),round (random 9),round (random 9),round (random 9),round (random 9),round (random 9),round (random 9),round (random 9)]; _plz = format ["%1%2%3%4%5",round (random 9),round (random 9),round (random 9),round (random 9),round (random 9)]; _e0 ctrlSetText name player; _e3 ctrlSetText _plz; _e6 ctrlSetText "Griechenland"; _e7 ctrlSetText format ["%1@zero-one.cc",name player]; _e8 ctrlSetText _tel; {_e2 lbAdd _x}forEach [ "Ginebra Merino Str. 3", "Ralletsretni Str. 34", "Alvarez Str. 22", "Cerda Rivero Str. 9", "Papadopoulos Str. 28", "Escalante Vasquez Str. 10", "Muro Torres Str. 4", "Guardado Str. 53", "Nazario Str. 23", "Zur Hafenschenke. 17", "Botello Str. 41", "Palacios Gil Str. 3", "Santiago Str. 23", "Emperatriz Aguirre Str. 5"]; {_e4 lbAdd _x}forEach [ "Kavala", "Pyrgos", "Neochori", "Athira", "Sofia", "Syrta", "Agios Dionysios", "Abdera"]; {_e5 lbAdd _x}forEach [ "Kavala", "Pyrgos", "Neochori", "Athira", "Sofia", "Syrta", "Agios Dionysios", "Abdera"]; {_l0 lbAdd _x}forEach [ "Hinduismus", "Buddhismus", "Judentum", "katholische", "evangelische", "Orthodox", "Zeugen Jehovas", "Islam", "Sunniten", "Schiiten", "Charidschiten", "Volksislam", "Bahai", "Satanismus", "Naturreligion", "Scientology", "Keine/Andere"]; {_l1 lbAdd _x}forEach ["ja","nein"]; {_l2 lbAdd _x}forEach ["Weiblich","Männlich"]; {_l3 lbAdd _x}forEach [ "Single", "In einer Beziehung", "Verlobt", "Verheiratet", "eingetragenen Partnerschaft", "Lebensgemeinschaft", "offene Beziehung", "kompliziert", "getrennt", "geschieden", "verwittwed"]; {_l4 lbAdd _x}forEach [ "unbekannt", "0", "0-", "0+", "AB", "AB-", "AB+", "B", "B-", "B+", "A", "A-", "A+"]; for "_i" from 1 to 31 do { _l5 lbAdd format ["%1",_i]; }; for "_i" from 1 to 12 do { _l6 lbAdd format ["%1",_i]; }; for "_i" from 1940 to 1995 do { _l7 lbAdd format ["%1",_i]; }; _b0 ctrlSetText "Zurück"; if (_new) then { _b0 ctrlEnable true; _b0 buttonSetAction "closeDialog 0;"; } else { _b0 ctrlEnable false; }; _b1 ctrlSetText "Überprüfen"; _b1 buttonSetAction "zero_var_check = true;"; _ende = true; _fehler = []; if (!isNil "zero_var_temp_sicherung") then { _e0 ctrlSetText (zero_var_temp_sicherung select 0); _e3 ctrlSetText (zero_var_temp_sicherung select 2); _e6 ctrlSetText (zero_var_temp_sicherung select 5); _e7 ctrlSetText (zero_var_temp_sicherung select 6); _e8 ctrlSetText (zero_var_temp_sicherung select 7); _e2 lbSetCurSel (zero_var_temp_sicherung select 1); _e4 lbSetCurSel (zero_var_temp_sicherung select 3); _e5 lbSetCurSel (zero_var_temp_sicherung select 4); _l0 lbSetCurSel (zero_var_temp_sicherung select 8);
_l1 lbSetCurSel (zero_var_temp_sicherung select 9); _l2 lbSetCurSel (zero_var_temp_sicherung select 10); _l3 lbSetCurSel (zero_var_temp_sicherung select 11); _l4 lbSetCurSel (zero_var_temp_sicherung select 12); _l5 lbSetCurSel (zero_var_temp_sicherung select 13); _l6 lbSetCurSel (zero_var_temp_sicherung select 14); _l7 lbSetCurSel (zero_var_temp_sicherung select 15); }; while {_ende} do { _checkfehler = compile 'if ((_this select 0) in (_this select 1)) then {_re = "''#DC143C''"} else {_re = "''#EDF5F5''"}; _re'; _gro = 0.65; _z0 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Name",[_z0,_fehler] call _checkfehler]; _z1 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.2,"Geburts-<br/>datum",[_z1,_fehler] call _checkfehler]; _z2 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.1,"Anschrift",[_z2,_fehler] call _checkfehler]; _z3 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Plz",[_z3,_fehler] call _checkfehler]; _z4 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Stadt",[_z4,_fehler] call _checkfehler]; _z5 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.2,"Geburts-<br/>ort",[_z5,_fehler] call _checkfehler]; _z6 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.2,"Geburts-<br/>land",[_z6,_fehler] call _checkfehler]; _z7 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"E-Mail",[_z7,_fehler] call _checkfehler]; _z8 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Telefon",[_z8,_fehler] call _checkfehler]; _z9 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"",[_z9,_fehler] call _checkfehler]; _z10 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"",[_z10,_fehler] call _checkfehler]; _z11 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"",[_z11,_fehler] call _checkfehler]; _z12 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"",[_z12,_fehler] call _checkfehler]; _z13 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Religion",[_z13,_fehler] call _checkfehler]; _z14 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.2,"minderj.<br/>Kinder",[_z14,_fehler] call _checkfehler]; _z15 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.3,"Geschlecht",[_z15,_fehler] call _checkfehler]; _z16 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro,"Status",[_z16,_fehler] call _checkfehler]; _z17 ctrlSetStructuredText parseText format["<t size='%1' color=%3>%2</t>",_gro/1.2,"Blutgruppe",[_z17,_fehler] call _checkfehler]; waitUntil {(!zero_var_check && isNull (findDisplay 1000))||zero_var_check}; if (!zero_var_check) exitWith {if (_new) then {}else {[] spawn zero_fnc_formular; "Du musst das Formular ausfüllen" call zero_fnc_msg; };}; _fehler = []; _e0t = ctrlText _e0; _e3t = ctrlText _e3; _e6t = ctrlText _e6; _e7t = ctrlText _e7; _e8t = ctrlText _e8; _e2t = _e2 lbText (lbCurSel _e2); _e4t = _e4 lbText (lbCurSel _e4); _e5t = _e5 lbText (lbCurSel _e5); _l0t = _l0 lbText (lbCurSel _l0); _l1t = _l1 lbText (lbCurSel _l1); _l2t = _l2 lbText (lbCurSel _l2); _l3t = _l3 lbText (lbCurSel _l3); _l4t = _l4 lbText (lbCurSel _l4); _l5t = _l5 lbText (lbCurSel _l5); _l6t = _l6 lbText (lbCurSel _l6); _l7t = _l7 lbText (lbCurSel _l7); zero_var_temp_sicherung = [_e0t,(lbCurSel _e2),_e3t,(lbCurSel _e4),(lbCurSel _e5),_e6t,_e7t,_e8t,(lbCurSel _l0),(lbCurSel _l1),(lbCurSel _l2),(lbCurSel _l3),(lbCurSel _l4),(lbCurSel _l5),(lbCurSel _l6),(lbCurSel _l7)]; if (_e0t isEqualTo "") then { _fehler pushBack _z0; }else { if ((count _e0t) > 50) exitWith {_fehler pushBack _z0; "Dein Nick ist zu lang!" call zero_fnc_msg;}; _chrByte = toArray (_e0t); _allowed = toArray('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ß!#$()[]*+,-./<=>?@'); {if !(_x in _allowed) exitWith {(format ["Das Zeichen %1 ist nicht im Nick erlaubt",toString[_x]]) call zero_fnc_msg; _fehler pushBack _z0;}}forEach _chrByte; }; if (_e2t isEqualTo "") then {_fehler pushBack _z2;}; if (_e3t isEqualTo "") then { _fehler pushBack _z3; }else { if (!([_e3t] call zero_fnc_isNumber) || ((count _e3t) > 7)) then { _fehler pushBack _z3; }; }; if (_e4t isEqualTo "") then {_fehler pushBack _z4;}; if (_e5t isEqualTo "") then {_fehler pushBack _z5;}; if (_e6t isEqualTo "") then { _fehler pushBack _z6; }else{ if ((count _e6t) > 50) exitWith {_fehler pushBack _z6; "Dein Geburtsland ist zu lang!" call zero_fnc_msg;}; _chrByte = toArray (_e6t); _allowed = toArray('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz 0123456789ÄäÖöÜüß!#$()[]*+,-./<=>?@:&§^'); {if !(_x in _allowed) exitWith {(format ["Das Zeichen %1 ist nicht im Geburtsland erlaubt",toString[_x]]) call zero_fnc_msg; _fehler pushBack _z6;}}forEach _chrByte; }; if (_e7t isEqualTo "") then { _fehler pushBack _z7; }else{ if ((count _e7t) > 65) exitWith {_fehler pushBack _z7; "Deine E-Mail ist zu lang!" call zero_fnc_msg;}; _chrByte = toArray (_e7t); _allowed = toArray("@."); if ((_chrByte find (_allowed select 0) == -1) || (_chrByte find (_allowed select 1) == -1)) then {_fehler pushBack _z7;}; }; if (_e8t isEqualTo "") then { _fehler pushBack _z8; }else{ if (!([_e8t] call zero_fnc_isNumber) || ((count _e3t) > 24)) then { _fehler pushBack _z8; }; }; if (_l0t isEqualTo "") then {_fehler pushBack _z13;}; if (_l1t isEqualTo "") then {_fehler pushBack _z14;}; if (_l2t isEqualTo "") then {_fehler pushBack _z15;}; if (_l3t isEqualTo "") then {_fehler pushBack _z16;}; if (_l4t isEqualTo "") then {_fehler pushBack _z17;}; if (_l5t isEqualTo "") then {_fehler pushBack _z1;}; if (_l6t isEqualTo "") then {_fehler pushBack _z1;}; if (_l7t isEqualTo "") then {_fehler pushBack _z1;}; if (_fehler isEqualTo []) then { if (_e0t isEqualTo name player) then { _ende = false; } else { [[1,_e0t,player,zero_var_playerSide,clientOwner],"zero_fnc_namecheck",zero_var_HC1_owner,false] call zero_fnc_sendPacket; waitUntil {!isNil "zero_var_namencheckre"}; if (zero_var_namencheckre) then { _fehler pushBack _z0; "Der Name ist schon vergeben" call zero_fnc_msg; zero_var_check = false; } else { _ende = false; }; zero_var_namencheckre = nil; }; }else { zero_var_check = false; }; }; if (!zero_var_check) exitWith {}; closeDialog 0; [_e0t,_e2t,_e3t,_e4t,_e5t,_e6t,_e7t,_e8t,_l0t,_l1t,_l2t,_l3t,_l4t,_l5t,_l6t,_l7t,_new,_first] spawn zero_fnc_formularcheck;
