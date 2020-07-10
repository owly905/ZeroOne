if (!hasInterface) exitWith {}; disableSerialization; private["_control","_time","_zoom","_position"]; _control = param[0,controlNull,[controlNull]]; _time = param[1,1,[0]]; _zoom = param[2,0.1,[0]];
_position = param[3,[],[[]]]; if(isNull _control || _position isEqualTo []) exitWith {}; _control ctrlMapAnimAdd[_time,_zoom,_position]; ctrlMapAnimCommit _control;
