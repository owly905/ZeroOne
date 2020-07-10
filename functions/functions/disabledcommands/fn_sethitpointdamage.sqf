params [ ["_hitpointname", "", [""]], ["_damage", -1, [0]] ]; if (_hitpointname isEqualTo "" || _damage isEqualTo -1) exitWith{};
zero_var_encryptDeleteVehicle = nil; player setHitPointDamage [_hitpointname, _damage];
