if (!hasInterface) exitWith {}; private["_group","_gang","_display","_list","_player","_member","_index"]; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;}; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; disableSerialization; _display = findDisplay 3300; if (isNull _display) exitWith {}; _list = _display displayCtrl 3302; if(lbCurSel _list isEqualTo -1) exitWith {"Du hast niemand ausgewählt" call zero_fnc_msg;}; _player = _list lbData (lbCurSel _list); if(_player isEqualTo "") exitWith {"Es ist niemand offline!" call zero_fnc_msg;
}; _player = call compile _player; _member = _gang select 3; _index = [(_player select 0), _member] call zero_fnc_findIndex; if(_index isEqualTo -1) exitWith {"Member nicht gefunden!" call zero_fnc_msg;}; if((_player select 0) == (_gang select 2)) exitWith {"Den Owner kannst du nicht kicken!" call zero_fnc_msg;}; _list lbDelete (lbCurSel _list); _member deleteAt _index; _gang set[3,_member]; _group setVariable["zero_var_gang",_gang,true]; zero_var_gangOfflineKick = true; ["Änderung werden erst durch Klick auf -Übernehmen- angewendet!",1] call zero_fnc_msg; [[clientOwner,9,[_gang select 0, (_player select 0)]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket;