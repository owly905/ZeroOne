if (!hasInterface) exitWith {}; private["_shop","_sideCheck","_spawnPoints","_shopFlag","_disableBuy","_license","_exit","_type","_vehicles"]; _shop = param[0,"",[""]]; _sideCheck = param[1,sideUnknown,[civilian,east]]; _shopFlag = param[3,"",[""]]; _disableBuy = param[5,false,[true]]; _exit = false; disableSerialization; if(!((typeName zero_var_donator) isEqualTo (typeName 0))) then {zero_var_donator = 0;}; if(diag_tickTime - zero_var_allowedToUnimpound < 10) exitWith {"Du kannst nur alle 10 Sekunden ein Fahrzeug kaufen!" call zero_fnc_msg;}; if(dialog) then { waitUntil{!dialog}; }; if(_shop == "") exitWith {}; _license = getText(missionConfigFile >> "zero_VehicleShops" >> _shop >> "license"); if((_license) != "") then { if(!(call compile _license)) exitWith { _exit = true; (localize "STR_Shop_Veh_NotAllowed") call zero_fnc_msg; }; }; if(_sideCheck != sideUnknown && (zero_var_playerSide != _sideCheck)) then { if (!(_sideCheck isEqualTo civilian && (zero_var_playerSide isEqualTo east))) exitWith { _exit = true; (localize "STR_Shop_Veh_NotAllowed") call zero_fnc_msg; }; }; if(_exit) exitWith {};
{ if( ( _x isKindOf "Car" ) || ( _x isKindOf "Air" ) || ( _x isKindOf "Ship" ) || ( _x isKindOf "Tank" ) || ( _x isKindOf "Submarine" ) ) then { for "_i" from 0 to ( count( getArray(configFile >> "CfgVehicles" >> ( typeOf _x ) >> "hiddenSelectionsTextures") ) - 1 ) do { _x setObjectMaterial [ _i,"A3\data_f\default.rvmat" ]; }; _x hideObject true; }; false; } count ( [ 24745, 18902.2, 0 ] nearObjects 30 ); switch (true) do { case ((_shop find "car") != -1):{ _type = "car"; }; case ((_shop find "jet") != -1):{ _type = "air"; }; case ((_shop find "air") != -1):{ _type = "air"; }; case ((_shop find "ship") != -1):{ _type = "ship"; }; case ((_shop find "truck") != -1):{ _type = "truck"; }; case ((_shop find "kart") != -1):{ _type = "kart"; }; }; setObjectViewDistance [800,150]; _spawnPoints = ["shop"] call zero_fnc_getNearestMarker; zero_var_vehicleShopInfo = [_shop,_spawnPoints,_shopFlag,_disableBuy,_type]; [] spawn zero_fnc_vehicleShopLoadCamera; if(!createDialog "zero_var_Vehicle_Shop") exitWith {zero_var_Camrunning = false;}; (findDisplay 2300) displayAddEventHandler ["KeyDown", "if((_this select 1) == 1) then {true};"]; [1] spawn zero_fnc_vehicleShopStep;