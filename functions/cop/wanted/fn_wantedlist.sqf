if (!hasInterface) exitWith {}; zero_var_wanted_list = param [0,[],[[]]]; zero_var_wanted_list_copy = zero_var_wanted_list; disableSerialization; 



lbClear 2401; lbClear 2402; lbClear 1503; ctrlSetText [1401,""]; ctrlSetText [1402,""]; ctrlSetText [1403,""]; ctrlSetText [1005,""]; ctrlSetText [1400,""]; if(zero_var_wanted_list_copy isEqualTo []) exitWith { lbAdd [2401, localize "STR_PM_WantedList_sear"];
}; private _units = []; { _units pushBackUnique (_x getVariable["zero_var_realname",name _x]); } forEach playableUnits; { private _unit = _x select 0; if (_unit in _units) then { lbAdd [2401, format["%1", _unit]]; lbSetData [2401, (lbSize 2401)-1, _unit]; }; } forEach zero_var_wanted_list_copy; lbSort [2401,"ASC"]; if(((lbSize 2401)-1) isEqualTo -1) then { lbAdd [2401, localize "STR_PM_WantedList_sear"]; } else { lbSetCurSel[2401,0]; };
