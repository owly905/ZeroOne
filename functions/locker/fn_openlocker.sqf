if (!hasInterface) exitWith {}; if(serverTime - zero_var_locker_inUse < 30) exitWith {"Du kannst nur alle 30 Sekunden auf das Schließfach zugreifen!" call zero_fnc_msg;
}; zero_var_locker_inUse = serverTime; disableSerialization; createDialog "zero_var_locker";
