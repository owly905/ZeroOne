if (isNil "zero_var_reallifetime") exitWith {serverTime}; _period = if(zero_var_reallifetime < 46801) then {12} else {4};
(_period*3600) - serverTime;
