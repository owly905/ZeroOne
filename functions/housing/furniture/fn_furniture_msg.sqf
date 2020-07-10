if (!hasInterface) exitWith {}; params [["_text",""],["_type","err"]]; private _color = switch _type do { case "err": {"#B80404"}; default {"#FFFFFF"};
}; 100 cutText ["","PLAIN"]; private _msg = format ["<t color='%1' size = '0.8'>%2</t>",_color,_text]; [_msg,-1,-1,2,0.1,0,100] spawn BIS_fnc_dynamicText;
