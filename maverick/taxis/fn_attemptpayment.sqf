params [ ["_amount", 0, [0]], ["_allowNegativ", false, [false]] ]; private _paymentSource = getText (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "paymentSource"); private _return = false; private _handled = false; private _both = (_paymentSource == "both"); if ((_paymentSource == "wallet" || {_both}) && !_handled) then { if (([2, 0] call zero_fnc_Z0Check) >= _amount) then { [0, ([2, 0] call zero_fnc_Z0Check) - _amount] call zero_fnc_Z0Check; _return = true; _handled = true; } else { if (_allowNegativ) then { [0, ([2, 0] call zero_fnc_Z0Check) - _amount] call zero_fnc_Z0Check;
_return = true; _handled = true; } else { _return = false; }; }; }; if ((_paymentSource == "bank" || {_both}) && !_handled) then { if (([3, 0] call zero_fnc_Z0Check) >= _amount) then { [1, ([3, 0] call zero_fnc_Z0Check) - _amount] call zero_fnc_Z0Check; _return = true; } else { if (_allowNegativ) then { [1, ([3, 0] call zero_fnc_Z0Check) - _amount] call zero_fnc_Z0Check; _return = true; } else { _return = false; }; }; }; _return
