if (!hasInterface) exitWith {}; private["_licenses","_civ"]; _civ = param[0,"",[""]]; _licenses = param[1,(localize "STR_Cop_NoLicenses"),[""]]; [format["<t color='#FFD700'><t size='0.9'>"+(localize "STR_Cop_Licenses")+"</t></t><br/>%1",_licenses],3,format["<t color='#FF0000'>%1</t>",_civ]] call zero_fnc_msg;

