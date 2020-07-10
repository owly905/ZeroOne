if (!hasInterface) exitWith {}; private["_nearVehicles","_control","_className","_displayName","_picture","_price","_control2"]; if (zero_var_action_inUse) exitWith {(localize "STR_NOTF_ActionInProc") call zero_fnc_msg;}; disableSerialization; zero_var_chopShop = getMarkerPos "chop_shop"; _nearVehicles = nearestObjects [zero_var_chopShop,["Car","Truck"],25]; if(_nearVehicles isEqualTo []) exitWith {(localize "STR_Shop_NoVehNear") call zero_fnc_msg;}; if(!(createDialog "zero_var_Chop_Shop")) exitWith {(localize "STR_Shop_ChopShopError") call zero_fnc_msg;}; _control = ((findDisplay 39400) displayCtrl 39402); { if(alive _x && (crew _x) isEqualTo []) then { _className = typeOf _x; _displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName"); _picture = getText(configFile >> "CfgVehicles" >> _className >> "picture"); _price = getNumber(missionConfigFile >> "zero_CfgVehicles" >> _className >> "chopping");
if (isNil "_price" || {_price <= 0}) then { _price = round(getNumber(missionConfigFile >> "zero_CfgVehicles" >> _className >> "garage_sell") * 0.4); }; if (!(playerSide isEqualTo WEST)) then { if((zero_gang_flag getVariable["zero_var_gangControl","-1"]) != (((group player) getVariable["zero_var_gang",["-1"]]) select 0)) then { if (!(_className in ["B_APC_Wheeled_01_cannon_F", "I_APC_Wheeled_03_cannon_F"]) && _price > 3000000) then {_price = 3000000;}; } else { if (_className in ["O_Truck_03_covered_F", "O_Truck_03_device_F", "O_MRAP_02_F", "I_MRAP_03_F", "B_MRAP_01_F", "I_G_Offroad_01_armed_F", "B_APC_Wheeled_01_cannon_F", "I_APC_Wheeled_03_cannon_F"]) then { _price = _price + 500000; }; }; }; _control lbAdd _displayName; _control lbSetData [(lbSize _control)-1,str(_forEachIndex)]; _control lbSetPicture [(lbSize _control)-1,_picture]; _control lbSetValue [(lbSize _control)-1,_price]; }; } forEach _nearVehicles;
