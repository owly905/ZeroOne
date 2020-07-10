if (!hasInterface) exitWith {}; removeAllWeapons player; {player removeMagazine _x;} forEach (magazines player); removeUniform player; removeVest player; removeBackpack player; removeGoggles player;
removeHeadgear player; { player unassignItem _x; player removeItem _x; } forEach (assignedItems player); if(hmd player != "") then { player unlinkItem (hmd player); };
