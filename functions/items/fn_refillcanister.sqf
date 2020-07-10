if([false,"fuelE",1] call zero_fnc_handleZOInv) then { if([true,"fuelF",1] call zero_fnc_handleZOInv) then { ["Du hast einen Kanister aufgefüllt!",1] call zero_fnc_msg;
}else{ "Du hast nicht genug Platz für einen vollen Kanister!" call zero_fnc_msg; }; }else{ "Du hast keine leeren Kanister dabei!" call zero_fnc_msg; };
