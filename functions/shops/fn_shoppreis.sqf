if (!hasInterface) exitWith {}; private["_farbe","_control","_selection","_menge","_price","_priceText","_buy"]; disableSerialization; _control = (findDisplay 3100) displayCtrl 3102; _selection = lbCurSel _control; _menge = lbCurSel ((findDisplay 3100) displayCtrl 3108); _priceText = (findDisplay 3100) displayCtrl 3105; _buy = (findDisplay 3100) displayCtrl 3104; _price = (_control lbValue _selection); if ((_price*_menge) <= ([3, 0] call zero_fnc_Z0Check)) then { _farbe = "'#8cff9b'";
_buy ctrlEnable true; } else { _farbe = "'#FF0000'"; _buy ctrlEnable false; }; _priceText ctrlSetStructuredText parseText format [ "<t align='left'>%5 <t color=%3>€%1</t></t>" + "<t align='right'>%4: <t color='#8cff9b'>€%2</t></t>", [(_price*_menge)] call zero_fnc_numberText, [([3, 0] call zero_fnc_Z0Check)] call zero_fnc_numberText,_farbe,(localize "STR_PM_MoneyStats"),(localize "STR_GNOTF_Price")];