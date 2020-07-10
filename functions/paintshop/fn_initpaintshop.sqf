if(!(playerSide in [civilian,east])) exitWith {"Du bist kein Zivilist" call zero_fnc_msg}; zero_var_gangpaintshop = _this; zero_var_allVehicles = []; zero_var_paintshop_refresh = time; createDialog "zero_var_paintshop"; ctrlEnable[4564354,false]; ctrlEnable[4564356,false]; disableSerialization; lbAdd[4564350, "Keine Fahrzeuge verfügbar..."]; zero_var_paintshopveh = objNull; 0 spawn zero_fnc_auctionCamera; disableSerialization; _display = findDisplay 4564350; if(zero_var_donator < 2) then { ctrlShow[4564355,false]; ctrlShow[4564356,false]; _text = _display displayCtrl 4564353; _text ctrlSetPosition [0.0730625 * safezoneW + safezoneX, 0.6034 * safezoneH + safezoneY, 0.0835313 * safezoneW, 0.033 * safezoneH]; _text ctrlCommit 0; _combo = _display displayCtrl 4564354; _combo ctrlSetPosition [0.158656 * safezoneW + safezoneX, 0.6078 * safezoneH + safezoneY, 0.0907499 * safezoneW, 0.0253 * safezoneH]; _combo ctrlCommit 0; } else { lbAdd[4564356,"Standard"]; lbSetData[4564356, 0, "Default"]; _index2 = 1; { if((getNumber(_x >> "donator") <= zero_var_donator) && {getNumber(_x >> "exclusive") <= zero_var_exclusive}) then { lbAdd [4564356, getText(_x >> "name")]; lbSetData[4564356, _index2, configName(_x)]; _index2 = _index2 + 1; }; } forEach ("true" configClasses (missionconfigfile >> "zero_CfgMaterials")); }; (_display displayCtrl 4564352) ctrlSetEventHandler["ButtonClick", "
    if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};
    zero_var_allowedToRefresh = serverTime;
    _this spawn {
        _vehdata = lbData [4564350, lbCurSel 4564350];
        if(_vehdata isEqualTo """") exitWith {""Du hast kein Fahrzeug ausgewählt!"" call zero_fnc_msg};
        _vehData = call compile _vehdata;
        _vehData params [
            ""_vId"",
            ""_class"",
            ""_curskin"",
            ""_curfilm""
        ];
        _skin = lbData [4564354, lbCurSel 4564354];
        _film = lbData [4564356, lbCurSel 4564356];
        if(_skin isEqualTO """") exitWIth {""Du hast keinen Skin ausgewählt!"" call zero_fnc_msg};
        if((_film isEqualTO """") && {zero_var_donator > 1}) exitWIth {""Du hast kein Material ausgewählt!"" call zero_fnc_msg};
        _bool1 = _skin isEqualTo _curskin;
        _bool2 = _film isEqualTo _curfilm;
        if(_bool1 && _bool2) exitWith {""Du hast bereits diesen Skin"" call zero_fnc_msg};
        _price = 0;
        if(!_bool1) then {
            _price = 50000;
        };
        if(!_bool2 && {zero_var_donator > 1}) then {
            if(_film isEqualTo ""Default"") exitWith {_price = _price + 10000};
            _shopprice = 0;
            {
                {
                    if((_x select 0) isEquaLto _class) exitWith {_shopprice = _x select 1};
                } forEach getArray(_x >> ""vehicles"");
                if(!(_shopprice isEquaLto 0)) exitWith {};
            } forEach ('getText(_x >> ""side"") in [""civ"", ""reb""]' configClasses (missionconfigFile >> ""zero_Vehicleshops""));
            _shopprice = round(_shopprice*1.5);
            _shopprice = round(_shopprice*getNumber(missionConfigFile >> ""zero_CfgMaterials"" >> _film >> ""value""));
            _price = _price + _shopprice;
        } else {
            _film = _curfilm;
        };
        if(_price isEqualTo 0) exitWith {""Diese Kombination ist leider derzeit nicht möglich"" call zero_fnc_msg};
        _bool = [format[""Die Änderung kostet %1€. Willst du wirklich fortfahren?"", [_price] call zero_fnc_numberText], ""Lackierer"", true, true] call bis_fnc_guimessage;
        if(!_bool) exitWith {};
        _var = [2, 0] call zero_fnc_Z0Check;
        if(_var < _price) exitWith {(localize ""STR_NOTF_NotEnoughMoney"") call zero_fnc_msg;};
        [0, _var - _price] call zero_fnc_Z0Check;
        [format [""PAINTSHOP: %1 (%2, %3) hat %4€ in seinen %5 (ID: %6) investiert."",player getVariable[""zero_var_realname"",name player], getPlayerUID player, playerSide,[_price] call zero_fnc_numberText, getText(missionConfigFile >> ""zero_CfgVehicles"" >> _class >> ""logname""), _vId]] call zero_fnc_zoLog;
        [[_vId, _class, _skin, _film], ""zero_fnc_updatevehicleskin"", zero_var_HC1_owner] call zero_fnc_sendPacket;
        closeDialog 0;
        [""Das Aussehen deines Fahrzeugs wurde geändert."",1] spawn zero_fnc_msg;
    };
"]; (_display displayCtrl 4564351) ctrlSetEventHandler["ButtonClick", "
    if((serverTime - zero_var_paintshop_refresh) < 15) exitWith {'Du kannst nur alle 15 Sekunden aktualisieren.' call zero_fnc_msg};
    zero_var_paintshop_refresh = serverTime;
    disableUserinput true;
    [[player],'zero_fnc_getallVehicles',zero_var_HC1_owner,false] call zero_fnc_sendPacket;
"]; (_display displayCtrl 4564350) ctrlSetEventHandler["LbSelChanged","
    disableUserInput true;
    _cur = (_this select 0) lbData (_this select 1);
    deleteVehicle zero_var_paintshopveh;
    if(_cur isEqualTo """") exitWIth {
        ctrlEnable[4564354,false];
        lbClear 4564354;
        lbSetcurSel [4564354, -1];
        ctrlEnable[4564356,false];
        lbSetcurSel [4564356, -1];
        disableUserInput false;
    };
    _cur = call compile _cur;
    _veh = _cur select 1;
    _curskin = _cur select 2;
    _curfilm = _cur select 3;
    if(_veh isEqualto """") exitWIth {disableUserInput false};
    zero_var_paintshopveh = [_veh, [0,0,0]] call zero_fnc_createVehicleLocal;
    zero_var_paintshopveh allowDamage false;
    zero_var_paintshopveh enableSimulation false;
    [zero_var_paintshopveh, [ 24745, 18902.2, 0 ]] call zero_fnc_setPosATL;
    ctrlEnable[4564354,true];
    lbClear 4564354;
    lbSetcurSel [4564354, -1];
    ctrlEnable[4564356,true];
    lbSetcurSel [4564356, -1];
    _colorArray = if(zero_var_gangpaintshop) then {
        _id = ((group player) getVariable [""zero_var_gang"",[]]) select 0;
        getArray(missionConfigFile >> ""zero_CustomSkins"" >> _id >> _veh);
    } else {
        getArray( missionConfigFile >> ""zero_CfgVehicles"" >> _veh >> ""textures"");
    };
    _donatorSkins = getArray(missionConfigFile >> ""zero_VehicleShops"" >> ""donatorSkins"");
    _index = 0;
    {
        _color = _x select 0;
        _side = _x select 1;
        _skins = _x select 2;

        if (!(_color isEqualTo ""X-MAS"") && {!(_color isEqualTo ""Halloween"")} && {_side in [""civ"",""reb""]}) then {
            if (_color in _donatorSkins) then {
                 if (zero_var_donator > 0) then {
                    lbAdd [4564354, _color];
                    lbSetData [4564354, _index, _color];
                    _index = _index + 1;
                 };
            } else {
                lbAdd [4564354, _color];
                lbSetData [4564354, _index, _color];
                _index = _index + 1;
            };
        };
    } forEach _colorArray;

    if(zero_var_donator > 1) then {
        _curfilm = _cur select 3;
        _found = false;
        for '_i' from 0 to ((lbSize 4564356)-1) do {
            if(lbData[4564356,_i] isEqualTo _curfilm) exitWith {
                _found = true;
                lbSetCurSel [4564356, _i];
            };
        };
        if(!_found) then {lbSetCurSel [4564356, -1]};
    };

    disableUserInput false;
    if (_index isEqualTo 0) exitWith {
        ctrlEnable [4564354,false];
        lbAdd[4564354, ""Standard""];
        lbSetCurSel[4564354,0];
    };
    lbSort 4564354;
    comment ""we need to set the index after the sort"";
    _found = false;
    if(zero_var_donator < 2) then {
        _setvalue = call {
            if(_veh in [""C_Offroad_01_F"",""B_G_Offroad_01_F"",""B_MRAP_01_F"",""I_MRAP_03_F""]) exitWith {[0]};
            if(_veh in [""B_T_LSV_01_armed_F"",""B_T_LSV_01_unarmed_F"",""O_T_LSV_02_unarmed_F""]) exitWith {[0,1]};
            _tmp = [];
            for ""_i"" from 0 to (count(getArray(configFile >> ""CfgVehicles"" >> _veh >> ""hiddenSelectionsTextures"")) -1) do {
                _tmp pushBack _i;
            };
            _tmp
        };
        _path = if(_curfilm isEqualTo ""Default"") then {
            ""A3\data_f\Default.rvmat"";
        } else {
            getText(missionConfigFile >> ""zero_CfgMaterials"" >> _curfilm >> ""path"");
        };
        {
            zero_var_paintshopveh setObjectMaterial [_x,_path];
        } forEach _setValue;
    } else {
        for '_i' from 0 to (lbSize 4564354)-1 do {
            if(lbText[4564354,_i] isEquaLto _curskin) exitWith {
                lbSetCurSel[4564354,_i];
                _found = true;
            };
        };
    };
    if(!_found) then {lbSetCurSel [4564354,0]};
"];
(_display displayCtrl 4564354) ctrlSetEventHandler["LbSelChanged", "
    _data = (_this select 0) lbData (_this select 1);
    if(_data isEqualTo """") exitWith {};
    _colorArray = if(zero_var_gangpaintshop) then {
        _id = ((group player) getVariable [""zero_var_gang"",[]]) select 0;
        getArray(missionConfigFile >> ""zero_CustomSkins"" >> _id >> (typeOf zero_var_paintshopveh));
    } else {
        getArray( missionConfigFile >> ""zero_CfgVehicles"" >> (typeOf zero_var_paintshopveh) >> ""textures"");
    };
    {
        if((_x select 0) isEqualTO _data) exitWIth {
            zero_var_paintshopveh setObjectTexture [0,(_x select 2) select 0];
            _count = count (_x select 2);
            if(_count < 2) exitWith {};
            zero_var_paintshopveh setObjectTexture [1,(_x select 2) select 1];
            if(_count < 3) exitWith {};
            zero_var_paintshopveh setObjectTexture [2,(_x select 2) select 2];
            if(_count < 4) exitWith {};
            zero_var_paintshopveh setObjectTexture [3,(_x select 2) select 3];
        };
    } forEach _colorArray;
"]; (_display displayCtrl 4564356) ctrlSetEventHandler["LbSelChanged", "
    _data = (_this select 0) lbData (_this select 1);
    if(_data isEqualTo """") exitWith {};
    _setValue = call {
        _class = lbData[4564350, lbCurSel 4564350];
        if(_class isEqualTo """") exitWith {[]};
        _class = (call compile _class) select 1;
        if(_class in [""C_Offroad_01_F"",""B_G_Offroad_01_F"",""B_MRAP_01_F"",""I_MRAP_03_F""]) exitWith {[0]};
        if(_class in [""B_T_LSV_01_armed_F"",""B_T_LSV_01_unarmed_F"",""O_T_LSV_02_unarmed_F""]) exitWith {[0,1]};
        _tmp = [];
        for ""_i"" from 0 to (count(getArray(configFile >> ""CfgVehicles"" >> _class >> ""hiddenSelectionsTextures"")) -1) do {
            _tmp pushBack _i;
        };
        _tmp
    };
    _path = if(_data isEqualTo ""Default"") then {
        ""A3\data_f\Default.rvmat"";
    } else {
        getText(missionConfigFile >> ""zero_CfgMaterials"" >> _data >> ""path"");
    };
    {
        zero_var_paintshopveh setObjectMaterial [_x,_path];
    } forEach _setValue;
"]; _display displaySetEventHandler ["Unload", "deleteVehicle zero_var_paintshopveh"];
