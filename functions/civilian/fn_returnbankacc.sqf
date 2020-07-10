if (!hasInterface) exitWith {}; private["_mode","_unit","_bankacc"]; _mode = param[0,1,[-1]]; _unit = param[1,objNull,[objNull]]; _bankacc = param[2,-1,[-1]]; if(_mode == 0) then { private _return = [2, 0] call zero_fnc_Z0Check;
[[1,player,_return],"zero_fnc_returnBankacc",_unit] call zero_fnc_sendPacket; }else{ if(_bankacc != -1) then { zero_var_ticket_bankacc = _bankacc; }; };
