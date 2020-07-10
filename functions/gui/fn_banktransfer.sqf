if (!hasInterface) exitWith {}; private["_val","_unit","_tax"]; if(serverTime - zero_var_atm_safe < 1) exitWith {"Der Geldautomat ist nicht so schnell!" call zero_fnc_msg;}; zero_var_atm_safe = serverTime; _unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])]; if(isNull _unit) exitWith {}; if((lbCurSel 2703) == -1) exitWith {(localize "STR_ATM_NoneSelected") call zero_fnc_msg;}; if(isNil "_unit") exitWith {(localize "STR_ATM_DoesntExist") call zero_fnc_msg;}; _val = parseNumber(ctrlText 2702); if(_val > 999999) exitWith {(localize "STR_ATM_TransferMax") call zero_fnc_msg;}; if(_val < 0) exitWith {}; if(!([str(_val)] call zero_fnc_isNumber)) exitWith {(localize "STR_ATM_notnumeric") call zero_fnc_msg;}; if(_val > ([2, 0] call zero_fnc_Z0Check)) exitWith {(localize "STR_ATM_NotEnough") call zero_fnc_msg;}; _tax = round(_val / 15); if((_val + _tax) > ([2, 0] call zero_fnc_Z0Check)) exitWith {(format[localize "STR_ATM_SentMoneyFail",_val,_tax]) call zero_fnc_msg;
}; _bool = [format["Willst du wirklich %1 an %2 überweisen?", [_val] call zero_fnc_numbertext, _unit getVariable["zero_var_realname",name _unit]], "Überweisung", localize "STR_Global_Yes",localize "STR_Global_Cancel"] call BIS_fnc_guiMessage; if(!_bool) exitWith {}; [0, ([2, 0] call zero_fnc_Z0Check) - (_val + _tax)] call zero_fnc_Z0Check; [1] call zero_fnc_updatePartial; [_val,_unit] spawn { uiSleep 10; [[_this select 0,profileName,(getPlayerUID player)],"zero_fnc_transferMoney",_this select 1] call zero_fnc_sendPacket; }; [] call zero_fnc_atmMenuUpdate; [format ["ATM TRANSACTION: %1 (%2, %3) hat %4 an %5 (%6, %7) gesendet.", player getVariable["zero_var_realname", name player], getPlayerUID player, playerSide, [_val] call zero_fnc_numberText, _unit getVariable["zero_var_realname",name player], getPlayerUID _unit, side _unit]] call zero_fnc_zoLog; [format[localize "STR_ATM_SentMoneySuccess",_unit getVariable["zero_var_realname",name _unit],[_val] call zero_fnc_numberText,[_tax] call zero_fnc_numberText],1] call zero_fnc_msg;