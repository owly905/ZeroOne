if (!hasInterface) exitWith {}; private ["_dialog","_cb1","_cb2","_cb3","_cb4","_cb5","_cb6","_cb7","_cb8","_slider","_sliderPos","_cb1Value","_cb2Value","_cb3Value","_cb4Value","_cb5Value","_cb6Value","_cb7Value","_cb8Value"]; waitUntil {visibleMap}; if(zero_var_minimized) exitWith { findDisplay 46 createDisplay 'zero_var_mapMarkerSystemMinimized'; waitUntil {!visibleMap || !zero_var_minimized}; if(zero_var_minimized) exitWith {(findDisplay 7060) closeDisplay 1;}; }; findDisplay 46 createDisplay "zero_var_mapMarkerSystemDialog"; disableSerialization; _dialog = findDisplay 7000; _slider = _dialog displayCtrl 7002; _cb1 = _dialog displayCtrl 7004; _cb2 = _dialog displayCtrl 7005; _cb3 = _dialog displayCtrl 7006; _cb4 = _dialog displayCtrl 7007; _cb5 = _dialog displayCtrl 7008; _cb6 = _dialog displayCtrl 7009; _cb7 = _dialog displayCtrl 7010; _cb8 = _dialog displayCtrl 7011; _slider sliderSetRange [0.1,2.5];
_slider sliderSetSpeed [0.1,0.1]; _slider sliderSetPosition (zero_var_mapMarkerSave select 0); _cb1 cbSetChecked (zero_var_mapMarkerSave select 1); _cb2 cbSetChecked (zero_var_mapMarkerSave select 2); _cb3 cbSetChecked (zero_var_mapMarkerSave select 3); _cb4 cbSetChecked (zero_var_mapMarkerSave select 4); _cb5 cbSetChecked (zero_var_mapMarkerSave select 5); _cb6 cbSetChecked (zero_var_mapMarkerSave select 6); _cb7 cbSetChecked (zero_var_mapMarkerSave select 7); _cb8 cbSetChecked (zero_var_mapMarkerSave select 8); waitUntil {!visibleMap || zero_var_minimized}; _sliderPos = sliderPosition _slider; _cb1Value = cbChecked _cb1; _cb2Value = cbChecked _cb2; _cb3Value = cbChecked _cb3; _cb4Value = cbChecked _cb4; _cb5Value = cbChecked _cb5; _cb6Value = cbChecked _cb6; _cb7Value = cbChecked _cb7; _cb8Value = cbChecked _cb8; zero_var_mapMarkerSave = [_sliderPos,_cb1Value,_cb2Value,_cb3Value,_cb4Value,_cb5Value,_cb6Value,_cb7Value,_cb8Value]; _dialog closeDisplay 1;
