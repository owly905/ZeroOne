if (!hasInterface) exitWith {}; private ["_unit","_val","_itm","_from","_diff","_apply"]; _unit = _this select 0; if(_unit != player) exitWith {}; _val = _this select 1; _itm = _this select 2; _from = _this select 3; _apply = _this select 4; if(dialog) then {closeDialog 0;}; if((_unit distance _from) > 30) exitWith {[format ["SUSPICOUS: %1 (%2, %3) hat von %4 (%5, %6) das Item %7 über eine Distanz von %8 erhalten", _unit getVariable["realname", name _unit], getPlayerUID _unit, side _unit, _from getVariable["realname", name _from], getPlayerUID _from, side _from, _itm, (_unit distance _from)]] call zero_fnc_zoLog;}; if(_apply == "med_marijuana") exitWith { titleText[format ["Du hast eine Dosis medizinisches Marihuana verabreicht bekommen."],"PLAIN"]; [] spawn zero_fnc_weed; }; if(_apply == "narcosis") exitWith { titleText[format ["Du hast eine Narkose verabreicht bekommen."],"BLACK OUT"]; 1 fadeSound 0;
[] spawn { uiSleep 10; titleText["","BLACK IN"]; 1 fadeSound 1; }; }; _diff = [_itm,(parseNumber _val),zero_var_carryWeight,zero_var_maxWeight] call zero_fnc_calWeightDiff; if(_diff != (parseNumber _val)) then { if(([true,_itm,_diff] call zero_fnc_handleZOInv)) then { (format[localize "STR_MISC_TooMuch_3",_from getVariable["zero_var_realname",name _from],_val,_diff,((parseNumber _val) - _diff)]) call zero_fnc_msg; [[_from,_itm,str((parseNumber _val) - _diff),_unit],"zero_fnc_giveDiff",_from] call zero_fnc_sendPacket; } else { [[_from,_itm,_val,_unit,false],"zero_fnc_giveDiff",_from] call zero_fnc_sendPacket; }; } else { if(([true,_itm,(parseNumber _val)] call zero_fnc_handleZOInv)) then { [format[localize "STR_NOTF_GivenItem",_from getVariable["zero_var_realname",name _from],_val,getText(missionConfigFile >> "zero_CfgItems" >> _itm >> "name")],1] call zero_fnc_msg; } else { [[_from,_itm,_val,_unit,false],"zero_fnc_giveDiff",_from] call zero_fnc_sendPacket; }; };
