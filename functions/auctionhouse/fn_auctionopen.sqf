if(!(PlayerSide in [CIVILIAN, EAST])) exitWith {"Du bist kein Zivilist" call zero_fnc_msg}; zero_var_auctions = []; [ [0,player], "zero_fnc_AuctionHandler", zero_var_HC1_owner ] call zero_fnc_sendPacket; createDialog "zero_var_auctionhouse"; zero_var_garage = []; zero_var_auctionveh = objNull; zero_var_auctionswitch = false; ctrlShow[80211,false]; ctrlShow[80223,false]; lbAdd[80204, "Alle"]; lbAdd[80204, "Auto"]; lbAdd[80204, "LKW"]; lbAdd[80204, "Boot"]; lbAdd[80204, "Helikopter"]; lbAdd[80204, "Jet"]; ((findDisplay 80200) displayCtrl 80205) ctrlSetEventHandler ["LbSelChanged","
    _type = (_this select 0) lbData (_this select 1);
    _parenttype = lbText[80204,lbCurSel 80204];
    _parenttypeval = call {
        if(_parenttype isEqualTo ""Alle"") exitWith {[0,1,2,3,4]};
        if(_parenttype isEquaLTo ""Auto"") exitWith {[0]};
        if(_parenttype isEquaLTo ""LKW"") exitWith {[1]};
        if(_parenttype isEqualTo ""Boot"") exitWith {[3]};
        if(_parenttype isEqualTo ""Helikopter"") exitWith {[2]};
        if(_parenttype isEqualto ""Jet"") exitWith {[4]};
        -1;
    };
    if(_type isEqualTo """") exitWith {hint 'test2'};
    deleteVehicle zero_var_auctionveh;
    ctrlShow[80211,false];
    ctrlShow[80223,false];
    lbClear 80207;
    _index = 0;
    {
        if((((_x select 2) isEqualTo _type) OR (_type isEqualTo ""Alle"")) && {getNumber(missionconfigfile >> ""zero_CfgVehicles"" >> (_x select 2) >> ""vehtype"") in _parenttypeval}) then {
            _info = [_x select 2] call zero_fnc_fetchVehInfo;
            lbAdd[80207, format[""%1 (%2)"",_info select 3,_x select 4]];
            lbSetData[80207,_index, str _x];
            lbSetPicture[80207,_index, _info select 2];
            _index = _index + 1;
        };
    } forEach zero_var_auctions;
    if(_index isEqualTo 0) exitWIth {
        lbAdd [80207, ""Kein Eintrag vorhanden""];
    };
    ((findDisplay 80200) displayCtrl 80208) cbSetChecked false;
"]; ((findDisplay 80200) displayCtrl 80204) ctrlSetEventHandler ["LbSelChanged","
    _data = (_this select 0) lbText (_this select 1);
    if(_data isEqualTo """") exitWith {hint 'test1'};
    _type = call {
        if(_data isEqualTo ""Alle"") exitWith {[0,1,2,3,4]};
        if(_data isEquaLTo ""Auto"") exitWith {[0]};
        if(_data isEquaLTo ""LKW"") exitWith {[1]};
        if(_data isEqualTo ""Boot"") exitWith {[3]};
        if(_data isEqualTo ""Helikopter"") exitWith {[2]};
        if(_data isEqualto ""Jet"") exitWith {[4]};
        -1;
    };
    deleteVehicle zero_var_auctionveh;
    ctrlShow[80211,false];
    ctrlShow[80223,false];
    if(ctrlShown ((findDisplay 80200) displayCtrl 80202)) then {
        lbClear 80205;
        lbAdd [80205, ""Alle""];
        lbSetData [80205, 0, ""Alle""];
        lbSetCurSel [80205, 0];
        _index = 1;
        {
            if(getNumber(_x >> ""vehtype"") in _type) then {

                _found = false;
                _cfg = configName _x;
                {
                    if((_x select 2) isEqualTo _cfg) exitWith {_found = true};
                } forEach zero_var_auctions;
                if(_found) then {
                    lbAdd[80205, getText(configFile >> 'CfgVehicles' >> _cfg >> ""displayName"")];
                    lbSetData[80205,_index, _cfg];
                    _index = _index + 1;
                };
            };
        } forEach (""true"" configClasses (missionConfigFile >> ""zero_CfgVehicles""));
    } else {
        lbClear 80215;
        _index = 0;
        {
            _type2 = getNumber(missionConfigFile >> 'zero_CfgVehicles' >> (_x select 2) >> 'vehtype');
            if((_type2 in _type) OR (_type isEqualTo [0,1])) then {
                _info = [_x select 2] call zero_fnc_fetchVehInfo;
                lbAdd[80215, format[""%1 (%2)"",_info select 3,_x select 8]];
                lbSetData[80215,_index, str _x];
                lbSetPicture[80215,_index, _info select 2];
                _index = _index + 1;
            };
        } forEach zero_var_garage;
        if(_index isEqualTo 0) exitWIth {
            lbAdd [80215, ""Kein Eintrag vorhanden""];
        };
    };
"];
lbSetCurSel [80204, 0]; true call zero_fnc_auctionswitch; ctrlSHow [80221,false]; ctrlSHow [80222,false]; zero_var_auction_time = 0; 0 spawn zero_fnc_auctionCamera;
