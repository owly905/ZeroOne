if (!hasInterface) exitWith {}; private["_dialog","_preis","_diff","_perc","_itm","_index","_info"]; disableSerialization; _dialog = findDisplay 3000; if(isNull _dialog) exitWith {}; _preis = _dialog displayCtrl 3003; _diff = _dialog displayCtrl 3004; _perc = _dialog displayCtrl 3005; _itm = lbData[3002,lbCurSel (3002)]; _index = [_itm,zero_var_market_prices] call zero_fnc_findIndex; if(_index isEqualTo -1) then { _preis ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Preis: %1</t>", "Nicht gefunden"]; _diff ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Differenz: %1</t>", "Nicht gefunden"]; _perc ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Prozentwert: %1</t>", "Nicht gefunden"];
}else{ _info = zero_var_market_prices select _index; _preis ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Preis: %1€</t>", _info select 1]; _diff ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Differenz: %1</t>", if(_info select 2 >= 0) then {format ["<t color='#33CC33'>+%1€</t>", _info select 2]}else{format ["<t color='#FF0000'>%1€</t>", _info select 2]}]; _perc ctrlSetStructuredText parseText format ["<t align='center' size='1.5'>Prozentwert: %1</t>", if(_info select 3 >= 0) then {format ["<t color='#33CC33'>+%1%2</t>", _info select 3,"%"]}else{format ["<t color='#FF0000'>%1%2</t>", _info select 3,"%"]}]; };