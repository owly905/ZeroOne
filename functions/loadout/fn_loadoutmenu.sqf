zero_var_loadouts_selectedLoadout = nil; zero_var_loadouts_selectedLoadoutSlot = nil; private _premiumButtons = [2403,2404]; if (zero_var_donator > 2) then { { ctrlEnable [_x,true]; (findDisplay 9900 displayCtrl _x) ctrlSetBackgroundColor [0.8,0,0.2,1]; } forEach _premiumButtons; } else { { ctrlEnable [_x,false]; (findDisplay 9900 displayCtrl _x) ctrlSetTooltip "Dieser Slot ist erst ab VIP LVL3 verfügbar - www.zero-one.cc/shop"; } forEach _premiumButtons; }; if ( isNil "zero_var_loadouts" && {(isNil "zero_var_loadouts_requested")}) then { [player,"zero_fnc_getLoadouts",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
zero_var_loadouts_requested = true; }; ((findDisplay 9900) displayCtrl 1100) ctrlSetStructuredText (parseText "Bitte wähle ein Loadout aus.<br/>
<br/>
<br/>
Hinweise:<br/>
<br/>
Beim Kauf eines Loadouts werden Items aus deinem Inventar bevorzugt,<br/>
damit du niemals mehr Geld als nötig ausgibst.<br/>
<br/>
Die Preise für dazugekaufte Items richten sich nach dem jeweiligen Shop,<br/>
auf den du am Loadoutschild zugreifen kannst." );
