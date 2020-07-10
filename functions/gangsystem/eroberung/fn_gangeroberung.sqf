if (!hasInterface) exitWith {};
 private["_gangPlayer","_gangID","_gangName","_areaContested","_ui","_title","_progress","_pgText","_cP"];
 if(playerSide != east) exitWith {"Deine Fraktion kann hier nichts machen!" call zero_fnc_msg;
};
 if((group player) getVariable["zero_var_gang",[]] isEqualTo []) exitWith {"Du musst in einer Gang sein, um dieses Gebiet einzunehmen!" call zero_fnc_msg;
};
 if(!((group player) getVariable["zero_var_gangAnnounce",false])) exitWith {"Deine Gang hat keine Ankündigung gesendet! Entferne dich aus diesem Gebiet" call zero_fnc_msg;
};
 if(!(zero_gang_flag getVariable["zero_var_gangFight",-1] > 0)) exitWith {"Warte bis die 10min abgelaufen sind!" call zero_fnc_msg;
};
 if((player distance2D zero_gang_flag) > 20) exitWith {"Du musst näher an die Fahne, um dieses Gebiet einzunehmen!" call zero_fnc_msg;
};
 if(currentWeapon player isEqualTo "") exitWith {"Du brauchst eine Waffe!" call zero_fnc_msg;
};
 if(((zero_gang_flag getVariable["zero_var_gangCapture",[false, (netId player)]]) select 0) && !isNull (objectFromNetId (zero_gang_flag getVariable["zero_var_gangCapture",[false, (netId player)]] select 1))) exitWith {"Die Fahne wird bereits eingenommen!" call zero_fnc_msg;
};
 if(zero_gang_flag getVariable["zero_var_gangControl","-1"] isEqualTo (((group player) getVariable["zero_var_gang",["-1"]]) select 0)) exitWith {"Deine Gang besitzt bereits das Gebiet!" call zero_fnc_msg;
};
 disableSerialization;
 _gangPlayer = (group player) getVariable "zero_var_gang";
 if(count (_gangPlayer select 3) < 10) exitWith {"Deine Gang braucht mindestens 10 Mitglieder!" call zero_fnc_msg;
};
 _gangID = _gangPlayer select 0;

_gangName = _gangPlayer select 1;
 _areaContested = false;
 zero_gang_flag setVariable["zero_var_gangCapture",[true, (netId player)],true];
 zero_var_action_inUse = true;
 _title = "Bleibe in einem Radius von 15m";
 5 cutRsc ["zero_var_progress","PLAIN"];
 _ui = uiNamespace getVariable "zero_var_progress";
 _progress = _ui displayCtrl 38201;
 _pgText = _ui displayCtrl 38202;
 _pgText ctrlSetText format["%2 (1%1)...","%",_title];
 _progress progressSetPosition 0.01;
 _cP = 0.01;
 while {true} do { uiSleep 0.5;
 _cP = _cP + 0.01;
 _progress progressSetPosition _cP;
 _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
 if(_cP >= 1) exitWith {};
 if(!alive player) exitWith {};
 if((player distance zero_gang_flag) > 15) exitWith {"Du musst näher an die Fahne, um dieses Gebiet einzunehmen!" call zero_fnc_msg;
 _areaContested = true;
};
 if(zero_gang_flag getVariable["zero_var_gangFightEnded",false]) exitWith {"Die Zeit ist abgelaufen!" call zero_fnc_msg;
 _areaContested = true;
};
 };
 5 cutText ["","PLAIN"];
 zero_var_action_inUse = false;
 zero_gang_flag setVariable["zero_var_gangCapture",nil,true];
 if(!alive player) exitWith {titleText["Du wurdest beim Versuch das Gebiet einzunehmen getötet!","PLAIN"];
};
 if(_areaContested) exitWith {};
 [[4,format["<t color='#FF0000' size='1.5'>Gang Eroberung ist von %1 eingenommen!</t>",_gangName]],"zero_fnc_broadcast",east] call zero_fnc_sendPacket;
 [[2,"Deine Gang hat das Gebiet eingenommen! Halte diese bis der Timer abgelaufen ist"],"zero_fnc_broadcast",(units (group player))] call zero_fnc_sendPacket;
 zero_gang_flag setVariable["zero_var_gangControl",_gangID, true];
 "Gang_Eroberung_1" setMarkerText format ["Gang Eroberung - %1",_gangName];
 zero_var_action_inUse = false;
