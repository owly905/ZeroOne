if (!hasInterface) exitWith {}; if(!isNull (objectParent player)) exitWith {(localize "STR_NOTF_VehicleGetOut") call zero_fnc_msg;}; if(isNil "zero_var_dp_point" || {!zero_var_delivery_in_progress}) exitWith {}; (["dp"] call zero_fnc_getSkillValueFarming) params ["_value", "_chance"]; _value = _value * 1000; zero_var_delivery_in_progress = false; private _dis = ceil ((markerPos zero_var_dp_start) distance (markerPos zero_var_dp_point)); private _price = round (4.5 * _dis); private _success = false; if (random(100) < _chance) then {_success = true;}; [format[(localize "STR_NOTF_Earned_1"),[_price] call zero_fnc_numberText,if(_success) then {[_value] call zero_fnc_numberText}else{0}],2] call zero_fnc_msg;
zero_var_cur_task setTaskState "Succeeded"; player removeSimpleTask zero_var_cur_task; zero_var_dp_point = nil; [format ["DP MISSION: %1 (%2, %3) hat %4 + %5 erhalten",player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide,[_price] call zero_fnc_numberText,if(_success) then {[_value] call zero_fnc_numberText}else{0}]] call zero_fnc_zoLog; if(_success) then {_price = _price + _value;}; [1, ([3, 0] call zero_fnc_Z0Check) + _price] call zero_fnc_Z0Check; ["dp",floor((_dis/1000)*0.625)] call zero_fnc_improveSkillFarming;