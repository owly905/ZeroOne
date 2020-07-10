_vehicle = [_this, 0, objNull] call bis_fnc_param; if (isNull(_vehicle)) then { "Du musst zuerst ein Fahrzeug auswählen!" call zero_fnc_msg;
} else { [_vehicle] call zero_fnc_cell_vernachricht; };
