if (!hasInterface) exitWith {}; closeDialog 0; [format["Dein Pegel liegt bei<br/> <t size='1.4'><t color='#FF0000'>%1%2</t></t>",[zero_var_drink] call zero_fnc_numberText,"‰"],1] call zero_fnc_msg; sleep 4; "chromAbberation" ppEffectEnable true; "radialBlur" ppEffectEnable true; enableCamShake true; player setVariable["zero_var_inDrink",true,true]; for "_i" from 0 to 59 do { if(zero_var_drink > 1.3) then { "chromAberration" ppEffectAdjust[0.16,random 0.16, true]; "chromAberration" ppEffectCommit 1; "radialBlur" ppEffectAdjust [random 0.05,random 0.05,0.3,0.3]; "radialBlur" ppEffectCommit 1; addCamShake[random 4, 2, random 4]; uiSleep 2; } else { "chromAberration" ppEffectAdjust [random 0.05,random 0.05,true]; "chromAberration" ppEffectCommit 1; "radialBlur" ppEffectAdjust [random 0.03,random 0.03,0.4,0.4];
"radialBlur" ppEffectCommit 1; addCamShake[random 3, 1, random 3]; uiSleep 2; }; }; if (zero_var_drink > 2.9) then { titleText ["Du bist ohnmächtig geworden","BLACK OUT"]; player playMoveNow "Incapacitated"; sleep 15; removeUniform player; removeVest player; player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback"; sleep 10; zero_var_drink = 0; titleText["Was zum Teufel ist mit mir passiert?!","PLAIN"]; player playMoveNow "amovppnemstpsraswrfldnon"; }; player setVariable["zero_var_inDrink",false,true]; "chromAberration" ppEffectAdjust [0,0,true]; "chromAberration" ppEffectCommit 5; "radialBlur" ppEffectAdjust [0,0,0,0]; "radialBlur" ppEffectCommit 5; uiSleep 6; resetCamShake; if(zero_var_drink != 0) then {zero_var_drink = zero_var_drink - 0.1;};
