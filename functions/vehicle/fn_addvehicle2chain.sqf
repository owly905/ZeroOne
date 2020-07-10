if (!hasInterface) exitWith {}; private["_vehicle","_skin","_film"]; _vehicle = param[0,objNull,[objNull]]; _skin = param[1,"",[""]]; _film = param[2,"",[""]];
if(isNull _vehicle) exitWith {}; if(!(_vehicle in zero_var_vehicles)) then { zero_var_vehicles pushBack _vehicle; };
