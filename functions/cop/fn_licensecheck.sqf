if (!hasInterface) exitWith {}; private["_cop","_licenses"]; _cop = param[0,objNull,[objNull]]; if(isNull _cop) exitWith {}; _licenses = ""; { if((missionNamespace getVariable (_x select 0)) && (_x select 1 == "civ") && ((_x select 0) != "zero_var_license_civ_rebel")) then { _licenses = _licenses + ([_x select 0] call zero_fnc_varToStr) + "<br/>";
}; } forEach zero_var_licenses; if(_licenses isEqualTo "") then {_licenses = (localize "STR_Cop_NoLicensesFound");}; [[profileName,_licenses],"zero_fnc_licensesRead",_cop] call zero_fnc_sendPacket;
