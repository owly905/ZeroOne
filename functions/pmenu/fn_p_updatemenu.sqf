if (!hasInterface) exitWith {}; private["_dialog","_inv","_lic","_mstatus","_side","_struct"]; disableSerialization; _side = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"}; case east:{"civ"}; }; _dialog = findDisplay 2001; _inv = _dialog displayCtrl 2005; _lic = _dialog displayCtrl 2014; _mstatus = _dialog displayCtrl 2015; _struct = ""; lbClear _inv; _mstatus ctrlSetStructuredText parseText format["<t size='1.8px'>€%1</t><br/><t size='1.8'>€%2</t>",[([2, 0] call zero_fnc_Z0Check)] call zero_fnc_numberText,[([3, 0] call zero_fnc_Z0Check)] call zero_fnc_numberText]; ctrlSetText[2009,format[localize "STR_Global_weight", zero_var_carryWeight, zero_var_maxWeight]];
{ private _str = getText(missionConfigFile >> "zero_CfgItems" >> (_x select 0) >> "name"); private _val = _x select 1; if(_val > 0) then { _inv lbAdd format["%1x - %2",_val,_str]; _inv lbSetData [(lbSize _inv)-1,(_x select 0)]; }; } forEach zero_var_inventory; { if((_x select 1) == _side) then { private _str = [_x select 0] call zero_fnc_varToStr; private _val = missionNamespace getVariable (_x select 0); if(_val) then {_struct = _struct + format["%1<br/>",_str];}; }; } forEach zero_var_licenses; if(_struct isEqualTo "") then {_struct = localize "STR_Cop_NoLicenses";}; _lic ctrlSetStructuredText parseText format["<t size='0.8px'>%1</t>",_struct];