if (!hasInterface) exitWith {}; params ["_house"]; _house setVariable ["zero_var_furniture_allocated",false]; private _index = zero_var_furniture_allocationBuffers find _house; if (_index != -1) then { {[_x] call zero_fnc_deleteVehicle} forEach (zero_var_furniture_allocationBuffers select (_index + 1));
zero_var_furniture_allocationBuffers set [_index + 1,[]]; };
