params[ [ "_sender", objNull,[ objNull ] ], [ "_case", 0, [ 0 ] ] ]; if (isNull _sender) exitWith {}; switch (_case) do { case 0: { if (("ItemGPS" in ((items _sender) + (assignedItems _sender))) || ("B_UavTerminal" in ((items _sender) + (assignedItems _sender)))) then { [ [ _sender, 1 ],"zero_fnc_panicbutton", west, false ] call zero_fnc_sendPacket; } else { "Du brauchst ein GPS-Gerät um deine Kollegen zu alamieren." call zero_fnc_msg; }; }; case 1: { private _name = _sender getVariable["zero_var_realname", name _sender];
[format["%1 hat den Panikknopf gedrückt.<br/><br/>Position: %1 <br/><br/>Die Position wurde auf der Karte markiert, diese wird sich in 5 Minuten löschen.",_name,mapGridPosition _sender],3,"Panicbutton"] call zero_fnc_msg; private _marker = createMarkerLocal [ format[ "panicbutton_%1_%2", _name, serverTime ], position _sender]; _marker setMarkerTextLocal format ["!!! %1 braucht Hilfe !!!", _name ]; _marker setMarkerColorLocal "ColorBLUFOR"; _marker setMarkerTypeLocal "hd_warning"; uiSleep 500; deleteMarkerLocal _marker; }; };