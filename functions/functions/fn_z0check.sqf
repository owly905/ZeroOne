private["_mode","_value"];
_mode = _this select 0;
_value = _this select 1;

switch(_mode) do {
	case (0): {
		zero_var_dahfklgakl = _value - zero_var_checkOneVar;
	}; 
	case (1): {
		zero_var_adflalgga = _value - zero_var_checkTwoVar;
	};
	case (2): {
		_value = zero_var_dahfklgakl + zero_var_checkOneVar;
	};
	case (3): {
		_value = zero_var_adflalgga + zero_var_checkTwoVar;
	};
	case (4): {
		_value = zero_var_dahfklgakl;
	};
	case (5): {
		_value = zero_var_adflalgga;
	};
};

_value;
