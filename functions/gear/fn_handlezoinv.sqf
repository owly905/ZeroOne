if (!hasInterface) exitWith {}; private["_math","_itm","_num","_return","_weight","_value","_diff","_index"]; _math = param[0,false,[false]]; _itm = param[1,"",[""]]; _num = param[2,0,[0]]; if(_itm isEqualTo "" || _num isEqualTo 0) exitWith {false}; if(_math) then { _diff = [_itm,_num,zero_var_carryWeight,zero_var_maxWeight] call zero_fnc_calWeightDiff; _num = _diff; }; if(_num <= 0) exitWith {false}; _weight = (getNumber(missionConfigFile >> "zero_CfgItems" >> _itm >> "weight")) * _num; if(_math) then { if((zero_var_carryWeight + _weight) <= zero_var_maxWeight) then { _index = [_itm,zero_var_inventory] call zero_fnc_findIndex; if(_index isEqualTo -1) then { _index = (zero_var_inventory pushBack [_itm,_num]); }else{ zero_var_inventory set[_index,[_itm,(((zero_var_inventory select _index) select 1) + _num)]]; }; zero_var_carryWeight = zero_var_carryWeight + _weight; if(_itm == "medipack") then { zero_var_medipack = zero_var_medipack + _num;
}; if(_itm == "medipack_large")then{ zero_var_medipack_large = zero_var_medipack_large + _num; }; if(_itm == "adrenalin") then { zero_var_adrenalin = zero_var_adrenalin + _num; }; _return = true; }else{ _return = false; }; }else{ _index = [_itm,zero_var_inventory] call zero_fnc_findIndex; if(_index isEqualTo -1) then { _value = 0; }else{ _value = (zero_var_inventory select _index) select 1; }; if((_value - _num) < 0) then { _return = false; }else{ if((_value - _num) isEqualTo 0) then { zero_var_inventory deleteAt _index; }else{ zero_var_inventory set[_index,[_itm,(_value - _num)]]; }; zero_var_carryWeight = zero_var_carryWeight - _weight; if(_itm == "medipack") then { zero_var_medipack = zero_var_medipack - 1; }; if(_itm == "medipack_large")then{ zero_var_medipack_large = zero_var_medipack_large - 1; }; if(_itm == "adrenalin") then { zero_var_adrenalin = zero_var_adrenalin - 1; }; _return = true; }; }; _return;
