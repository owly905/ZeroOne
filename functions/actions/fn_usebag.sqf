if (!hasInterface) exitWith {}; private["_mode"]; _mode = param[0,0,[-1]]; if(_mode == 0) then { player setVariable["zero_var_usebag",true,true]; "colorCorrections" ppEffectEnable true; "colorCorrections" ppEffectAdjust [1, 1, 0, [0.2,0.2,0.2,0], [0.2,0.2,0.2,0], [0.08,0.08,0.08,0]]; "colorCorrections" ppEffectCommit 1; "chromAberration" ppEffectEnable true;
"chromAberration" ppEffectAdjust [0.10,0.10,true]; "chromAberration" ppEffectCommit 1; "DynamicBlur" ppEffectEnable true; "DynamicBlur" ppEffectAdjust[5]; "DynamicBlur" ppEffectCommit 1; }else{ player setVariable["zero_var_usebag",false,true]; "colorCorrections" ppEffectEnable false; "chromAberration" ppEffectEnable false; "DynamicBlur" ppEffectEnable false; };
