if (!hasInterface) exitWith {}; disableSerialization; private["_z1","_z2","_z3","_z4","_z5","_z6","_back","_name","_strasse","_wohnort","_bd","_alter","_gang","_geschlecht","_ui"]; _name = param [0, "", [""], [2,3]]; _strasse = param [1, "", [""]]; _wohnort = param [2, "", [""]]; _bd = param [3, "", [""]]; _alter = param [4, "", [""]]; _gang = param [5, "", [""]]; _geschlecht = param [6, "", [""]]; 522 cutRsc ["zero_var_passdialog","PLAIN"]; _ui = uiNamespace getVariable "zero_var_passdialog"; _back = _ui displayCtrl 5101; _z1 = _ui displayCtrl 5102; _z2 = _ui displayCtrl 5103; _z3 = _ui displayCtrl 5104; _z4 = _ui displayCtrl 5105; _z5 = _ui displayCtrl 5106; _z6 = _ui displayCtrl 5107; switch (_geschlecht) do { case "Männlich" : {_back ctrlSetText "Resources\Textures\Images\pass\pass_m.jpg";}; case "Weiblich" : {_back ctrlSetText "Resources\Textures\Images\pass\pass_w.jpg";
}; case "Männlich_Polizei" : {_back ctrlSetText "Resources\Textures\Images\pass\polizei_m.jpg";}; case "Weiblich_Polizei" : {_back ctrlSetText "Resources\Textures\Images\pass\polizei_w.jpg";}; }; _z1 ctrlSetStructuredText parseText format["<t size='0.75' color='#DC143C'>%1</t>",_name]; _z2 ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_strasse]; _z3 ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_wohnort]; _z4 ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>Stunden: %1</t>",_bd]; _z5 ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>%1</t>",_alter]; _z6 ctrlSetStructuredText parseText format["<t size='0.75' color='#EDF5F5'>Geburt: %1</t>",_gang]; uiSleep 20; 522 cutText ["","PLAIN"];