if (!hasInterface) exitWith {}; private["_nearVehicles","_title","_control","_className","_displayName","_picture"]; disableSerialization; zero_var_chopShop = getPosATL (_this select 0); _nearVehicles = nearestObjects [getPosATL player,["Car","Truck","Air"],25]; if(_nearVehicles isEqualTo []) exitWith {(localize "STR_Shop_NoVehNear") call zero_fnc_msg;}; if(!(createDialog "zero_var_Chop_Shop")) exitWith {(localize "STR_Shop_ChopShopError") call zero_fnc_msg;}; _title = ((findDisplay 39400) displayCtrl 39403); _title ctrlSetText localize "STR_vInAct_DestroyVehicle_Title"; _title = ((findDisplay 39400) displayCtrl 39404);
_title ctrlSetText localize "STR_vInAct_DestroyVehicle_Button"; _control = ((findDisplay 39400) displayCtrl 39402); { if(alive _x) then { _className = typeOf _x; if(_className == "B_Truck_01_Repair_F") exitWith {}; _displayName = getText(configFile >> "CfgVehicles" >> _className >> "displayName"); _picture = getText(configFile >> "CfgVehicles" >> _className >> "picture"); if((crew _x) isEqualTo []) then { _control lbAdd _displayName; _control lbSetData [(lbSize _control)-1,str(_forEachIndex)]; _control lbSetPicture [(lbSize _control)-1,_picture]; }; }; } forEach _nearVehicles;