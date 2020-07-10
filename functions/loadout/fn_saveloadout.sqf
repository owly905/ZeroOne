zero_var_loadouts set [zero_var_loadouts_selectedLoadoutSlot - 1,getUnitLoadout player]; [[player,zero_var_loadouts],"zero_fnc_updateLoadouts",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
"Loadout wurde gespeichert." call zero_fnc_msg; zero_var_loadouts_selectedLoadoutSlot call zero_fnc_loadoutButton;
