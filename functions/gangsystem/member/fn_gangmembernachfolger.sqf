if (!hasInterface) exitWith {}; private["_player","_group","_gang","_display","_gangPlayerList","_member","_index","_action"]; disableSerialization; _display = findDisplay 3400; if (isNull _display) exitWith {}; _gangPlayerList = _display displayCtrl 3405; if(lbCurSel _gangPlayerList isEqualTo -1) exitWith {"Du hast niemand ausgewählt!" call zero_fnc_msg;}; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;}; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; _player = _gangPlayerList lbData (lbCurSel _gangPlayerList); if(_player isEqualTo "") exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; _player = call compile _player; if(isNull _player) exitWith {"Niemanden ausgewählt" call zero_fnc_msg;}; if((getPlayerUID _player) == (_gang select 2)) exitWith {"Deine Auswahl ist bereits Anführer der Gang!" call zero_fnc_msg;
}; _member = _gang select 3; _index = [getPlayerUID _player,_member] call zero_fnc_findIndex; if(_index isEqualTo -1) exitWith {"Der ausgewählte Spieler ist noch nicht in deiner Gang! Du musst diesen erst einladen." call zero_fnc_msg;}; _action = [ format["Möchtest du wirklich das %1 der neue Anführer der Gang wird?",_player getVariable["zero_var_realname",name _player]], "Neuen Anführer auswählen", localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage; if(!_action) exitWith {}; _gang set[2, getPlayerUID _player]; _player setRank "COLONEL"; _group selectLeader _player; _member set[_index,[getPlayerUID _player,6]]; _gang set[3,_member]; _group setVariable["zero_var_gang",_gang,true]; if(typeName (_gang select(count _gang -1)) != "BOOL") then { [[clientOwner,3,[_gang select 0,getPlayerUID _player]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket; };