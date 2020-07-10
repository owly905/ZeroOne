if (!hasInterface) exitWith {};

private["_unit","_time"]; 
_unit = param[0,objNull,[objNull]]; 
_time = param[1,15,[1]]; 

if(isNull _unit || !(_unit isKindOf "Man") || !isPlayer _unit) exitWith {};
if(side _unit isEqualTo west || side _unit isEqualTo independent) exitWith {};
if(!(_unit getVariable ["zero_var_restrained",false])) exitWith {};
if(_time < 1) exitWith {};

[[_unit,player,true],"zero_fnc_wantedBounty",zero_var_HC1_owner] call zero_fnc_sendPacket;
detach _unit;
[[_unit,false,_time],"zero_fnc_jail",_unit,false] call zero_fnc_sendPacket;
[[0,format[localize "STR_NOTF_Arrested_1", _unit getVariable["zero_var_realname",name _unit], player getVariable["zero_var_realname",name player]]],"zero_fnc_broadcast",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket;
