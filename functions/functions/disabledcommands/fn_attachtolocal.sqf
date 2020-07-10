params [ ["_object", objNull, [objNull]], ["_offset", [], [[]]], ["_memoryPoint", "", [""]] ]; if (isNull _object || {_offset isEqualTo []}) exitWith {}; if (_memoryPoint isEqualTo "") then { zero_var_encryptAttachTo = nil;
_object attachTo [player, _offset]; } else { zero_var_encryptAttachTo = nil; _object attachTo [player, _offset, _memoryPoint]; };
