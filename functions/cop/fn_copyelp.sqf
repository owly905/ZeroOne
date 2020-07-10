if (!hasInterface) exitWith {}; private["_vehicle","_sound","_sleep"]; _vehicle = param[0,objNull,[objNull]]; _sound = param[1,"",[""]]; _sleep = param[2,5,[5]]; if(isNull _vehicle || !alive _vehicle || _sound isEqualTo "") exitWith {};
zero_var_yelp_active = true; _vehicle say3D [_sound, 500, 1]; uiSleep _sleep; zero_var_yelp_active = false;
