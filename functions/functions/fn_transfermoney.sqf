if (isServer) exitWith {}; params [ ["_val",0,[0]], ["_from","",[""]], ["_uid","",[""]], ["_silent",false,[false]] ]; if (_uid isEqualTo "") exitWith {}; if(!([str(_val)] call zero_fnc_isNumber)) exitWith {}; if(_from isEqualTo "") exitWith {}; if(!([_uid] call zero_fnc_isUIDActive)) exitWith {"Der Auftraggeber der Ueberweisung konnte die Transaktion leider nicht gegenzeichnen. Das Geld wird nun von der Bank verwaltet bis sich der Auftraggeber meldet." call zero_fnc_msg;
}; [0, ([2, 0] call zero_fnc_Z0Check) + _val] call zero_fnc_Z0Check; [1] call zero_fnc_updatePartial; if (!_silent) then { [format[localize "STR_Function_Wire_Transfer",_from,[_val] call zero_fnc_numberText],2] call zero_fnc_msg; titleText [format[localize "STR_Function_Wire_Transfer",_from,[_val] call zero_fnc_numberText], "PLAIN"]; };
