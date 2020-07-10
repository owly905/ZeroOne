if (!hasInterface) exitWith {}; private["_mode","_value"]; _mode = param[0,-1,[0]]; _value = param[1,0,[0]]; if(_mode isEqualTo 0) then { [0, ([2, 0] call zero_fnc_Z0Check) + round((_value)*0.5)] call zero_fnc_Z0Check;
}else{ zero_var_ticket_bankacc = nil; zero_var_ticket_percentage = nil; };
