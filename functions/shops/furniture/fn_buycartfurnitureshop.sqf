disableSerialization; private _display = (findDisplay 20000); private _cartTree = _display displayCtrl 20008; if(isNil "zero_var_furnitureShopCart" || (_cartTree tvCount []) isEqualTo 0) exitWith {"Du hast nichts im Warenkorb!" call zero_fnc_msg;}; private _text = "Einkauf:"; private _price = 0; { _text = format ["%1<br/>%2x %3", _text, (_x select 3), getText(missionConfigFile >> "zero_CfgItems" >> (_x select 0) >> "name")]; _price = _price + ((_x select 1) * (_x select 3));
} forEach zero_var_furnitureShopCart; _text = format ["%1<br/>Insgesamt: %2€", _text, [_price] call zero_fnc_numberText]; if(_price > ([3, 0] call zero_fnc_Z0Check)) exitWith {"Du hast nicht so viel Geld dabei!" call zero_fnc_msg;}; [1, ([3, 0] call zero_fnc_Z0Check) - _price] call zero_fnc_Z0Check; { [true,(_x select 0),(_x select 3)] call zero_fnc_handleZOInv } forEach zero_var_furnitureShopCart; [_text,1] call zero_fnc_msg; [1] call zero_fnc_updatePartial; closeDialog 0;