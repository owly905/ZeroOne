zero_var_loadouts set [zero_var_loadouts_selectedLoadoutSlot - 1,[]]; [[player,zero_var_loadouts],"zero_fnc_updateLoadouts",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
(zero_var_loadouts_selectedLoadoutSlot) call zero_fnc_loadoutButton; "Loadout wurde gelöscht." call zero_fnc_msg;
