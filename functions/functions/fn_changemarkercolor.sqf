if (!hasInterface) exitWith {}; private ["_ListBoxSelectedIndex","_MarkerArray","_MarkerArrayOrig","_i","_LB_name"]; _ListBoxSelectedIndex = _this select 0; _MarkerArray = _this select 1; _MarkerArrayOrig = _this select 2; _LB_name = _this select 3; switch (true) do { case (_ListBoxSelectedIndex isEqualTo 1): { {_x setMarkerColorLocal "ColorRed"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 2): { {_x setMarkerColorLocal "ColorOrange"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 3): { {_x setMarkerColorLocal "ColorYellow"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 4): { {_x setMarkerColorLocal "ColorKhaki"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 5): { {_x setMarkerColorLocal "ColorGreen"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 6): { {_x setMarkerColorLocal "ColorBlue"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 7): { {_x setMarkerColorLocal "ColorPink"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 8): { {_x setMarkerColorLocal "colorCivilian"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 9): { {_x setMarkerColorLocal "ColorBlack"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 10): { {_x setMarkerColorLocal "ColorBrown"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 11): { {_x setMarkerColorLocal "ColorGrey"} forEach _MarkerArray; }; case (_ListBoxSelectedIndex isEqualTo 12): { {_x setMarkerColorLocal "ColorWhite"} forEach _MarkerArray;
}; default { _i = 0; { _i = _i + 1; (_MarkerArray select _i) setMarkerColorLocal (_MarkerArrayOrig select _i); } forEach _MarkerArray; }; }; switch (true) do { case (_LB_name isEqualTo "lb1"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7047) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7047) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb2"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7048) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7048) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb3"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7049) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7049) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb4"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7050) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7050) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb5"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7051) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7051) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb6"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7052) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7052) cbSetChecked true; }; }; case (_LB_name isEqualTo "lb7"): { if (_ListBoxSelectedIndex >= 1) then { ((findDisplay 7022) displayCtrl 7053) cbSetChecked false; }else{ ((findDisplay 7022) displayCtrl 7053) cbSetChecked true; }; }; default { }; };