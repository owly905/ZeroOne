if (!hasInterface) exitWith {}; private["_vehicle"]; _vehicle = param[0,objNull,[objNull]]; if(isNull _vehicle) exitWith {}; if(!alive _vehicle) exitWith {};
zero_var_yelp_active = true; _vehicle say3D ["MedicYelp", 250, 1]; uiSleep 5.4; zero_var_yelp_active = false;
