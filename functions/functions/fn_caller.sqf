private["_number","_params","_exec"]; _number = param[0,0,[0]]; _params = param[1,[],[[]]]; _exec = switch (_number) do { case 1 : {'[0, ([2, 0] call zero_fnc_Z0Check) + (_this select 0)] call zero_fnc_Z0Check; [23, format[(localize "STR_Garage_SoldCar"),[(_this select 0)] call zero_fnc_numberText],1] call zero_fnc_msg;'}; case 2 : {'[0, ([2, 0] call zero_fnc_Z0Check) - (_this select 0)] call zero_fnc_Z0Check; [1,"Dein Fahrzeug steht bereit!"] call zero_fnc_broadcast; if((_this select 0) != 0) then {[1] call zero_fnc_updatePartial;};'}; case 3 : {'zero_var_action_inUse = false;zero_var_adflalgga = _this select 0;[1,format[(localize "STR_NOTF_ChopSoldCar"),_this select 1,[_this select 2] call zero_fnc_numberText]] call zero_fnc_broadcast;'}; case 4 : {'zero_var_action_gangInUse = nil;'}; case 5 : {'(_this select 0) setVariable["zero_var_koffer",(_this select 1)];'}; case 6 : {'titleText[format ["Du wurdest geblitzt"],"WHITE IN",0.3];'}; case 7 : {'zero_var_locker = _this;'}; case 8 : {'zero_var_impoundedVehicles = _this; [zero_var_parkingYardMarker] call zero_fnc_parkingYardMenu;'};
case 9 : {'zero_var_ownerReturn = (_this select 0);'}; case 10 : {'zero_var_gangReturn = _this;'}; case 11 : {'if(isNil "zero_var_gangReturnTemp") then {
zero_var_gangReturnTemp = _this;
}else{
if(typeName(_this select (count(_this) - 1)) == "BOOL") then {
_this deleteAt (count(_this) - 1);
private _tmp = (zero_var_gangReturnTemp select 2);
{
_tmp pushBack _x;
}forEach _this;
zero_var_gangReturnTemp set[2, _tmp];
zero_var_gangReturn = zero_var_gangReturnTemp;
zero_var_gangReturnTemp = nil;
}else{
private _tmp = (zero_var_gangReturnTemp select 2);
{
_tmp pushBack _x;
}forEach _this;
zero_var_gangReturnTemp set[2, _tmp];
};
};'}; default {''}; }; _params call compile _exec;
