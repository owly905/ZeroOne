class CfgDisabledCommands {

	class CREATETEAM {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class SETWAYPOINTSTATEMENTS {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"ARRAY"},{"ARRAY"} };
		};
	};

	class ROPECREATE {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class ROPEDESTROY {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"OBJECT"} };
		};
	};

	class ROPEDETACH {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"OBJECT"},{"OBJECT"} };
		};
	};
	class ROPES {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"OBJECT"} };
		};
	};

	class ROPEATTACHEDOBJECTS {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"OBJECT"} };
		};
	};

	class ROPEATTACHTO {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"ARRAY"},{"OBJECT"} };
		};
	};

	class ROPEUNWOUND {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"OBJECT"} };
		};
	};

	class ROPECUT {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class CREATELOCATION {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class CREATEAGENT {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class SETDAMMAGE {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"OBJECT"},{"SCALAR"} };
		};
	};

	class SENDAUMESSAGE {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class SENDUDPMESSAGE {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class ADDWAYPOINT {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"GROUP"},{"ARRAY"} };
		};
	};

	class REMOTECONTROL {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"OBJECT"},{"OBJECT"} };
		};
	};

	class DRAWLINE {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"CONTROL"},{"ARRAY"} };
		};
	};

	class DRAWICON {
		class SYNTAX1 {
			targets[] = { 0,1,0 };
			args[] = { {"CONTROL"},{"ARRAY"} };
		};
	};

	class CTRLREMOVEALLEVENTHANDLERS {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"CONTROL"},{"STRING"} };
		};
	};

	class CHECKVISIBILITY {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"ARRAY"},{"ARRAY"} };
		};
	};

	class CREATEGEARDIALOG {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {},{"ARRAY"} };
		};
	};

	class CREATEUNIT {
		class SYNTAX1 {
			targets[] = { 0,0,0 };
			args[] = { {"STRING"},{"ARRAY"} };
		};
		class SYNTAX2 {
			targets[] = { 0,0,0 };
			args[] = { {"GROUP"},{"ARRAY"} };
		};
	};

	class LOADFILE {
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"STRING"} }; 
		};
	}; 

	class OPENDLCPAGE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"SCALAR"} }; 
		}; 
	}; 

	class SETVELOCITY { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 

	class EXEC { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"ANY"},{"STRING"} }; 
		}; 
	}; 

	class EXECVM { 
		class SYNTAX1 { 
			targets[] = { 1,1,1 }; 
			args[] = { {"ANY"},{"STRING"} }; 
		}; 
		class SYNTAX2 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"STRING"} };
		};
	};

	class PREPROCESSFILE {
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{"STRING"} }; 
		}; 
	}; 

	class PREPROCESSFILELINENUMBERS { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{"STRING"} }; 
		}; 
	}; 

	class MOVEINDRIVER { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {"OBJECT"},{"OBJECT"} };
		};
	};

	class MOVEOUT { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{"OBJECT"} }; 
		}; 
	}; 

	class CREATEDISPLAY { 
		class SYNTAX1 { 
			targets[] = { 0,1,1 }; 
			args[] = { {"DISPLAY"},{"STRING"} }; 
		}; 
	}; 

	class CREATEDIALOG { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{"STRING"} }; 
		}; 
	}; 

	class CTRLCREATE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"DISPLAY"},{"ARRAY"} }; 
		}; 
	}; 

	class CTRLDELETE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"CONTROL"} }; 
		}; 
	}; 

	class HTMLLOAD { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {"CONTROL"},{"STRING"} }; 
		}; 
	}; 

	class CTRLHTMLLOADED {
		class SYNTAX1 {
			targets[] = { 0,1,0 };
			args[] = { {},{"CONTROL"} };
		};
	}; 

	class VECTORNORMALIZED { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{"ARRAY"} }; 
		}; 
	}; 

	class GETMOUSEPOSITION { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {},{} }; 
		}; 
	}; 

	class ENABLECOLLISIONWITH { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {"OBJECT"},{"OBJECT"} };
		}; 
	}; 

	class DISABLECOLLISIONWITH { 
		class SYNTAX1 {
			targets[] = { 0,1,0 }; 
			args[] = { {"OBJECT"},{"OBJECT"} }; 
		}; 
	}; 
	
	class VECTORMULTIPLY { 
		class SYNTAX1 { 
			targets[] = { 0,1,0 }; 
			args[] = { {"ARRAY"},{"SCALAR"} }; 
		}; 
	}; 
	
	class FINDDISPLAY { 
		class SYNTAX1 { 
			targets[] = { 0,1,1 }; 
			args[] = { {},{"SCALAR"} };
		}; 
	}; 
	
	class SETPOS { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETPOSASL2 { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETPOSASLW { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETPOSITION { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"LOCATION"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETPOSWORLD { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETDAMAGE { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"OBJECT"},{"SCALAR","ARRAY"} }; 
		}; 
	}; 
	
	class ATTACHTO {
		class SYNTAX1 { 
			targets[] = { 0,1,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	};
	
	class CREATEMARKER { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {},{"ARRAY"} }; 
		}; 
	}; 
	
	class EXECFSM { 
		class SYNTAX1 { 
			targets[] = { 1,1,1 }; 
			args[] = { {"ANY"},{"STRING"} }; 
		}; 
		class SYNTAX2 { 
			targets[] = { 1,0,0 }; 
			args[] = { {},{"STRING"} }; 
		}; 
	}; 
	
	class SETHITPOINTDAMAGE { 
		class SYNTAX1 { 
			targets[] = { 0,1,1 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETHIT { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	};
	
	class SETHITINDEX { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class CREATETRIGGER { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"ARRAY"} }; 
		}; 
	}; 

	class CREATEVEHICLE { 
		class SYNTAX1 { 
			targets[] = { 1,0,1 }; 
			args[] = { {"STRING"},{"ARRAY"} }; 
		}; 
		class SYNTAX2 { 
			targets[] = { 1,0,1 }; 
			args[] = { {},{"ARRAY"} }; 
		}; 
	};
	
	class CREATEVEHICLELOCAL { 
		class SYNTAX1 { 
			targets[] = { 1,1,1 }; 
			args[] = { {"STRING"},{"ARRAY"} }; 
		}; 
	}; 
	
	class CREATEMINE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"ARRAY"} }; 
		}; 
	}; 
	
	class ADDMPEVENTHANDLER { 
		class SYNTAX0 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class REMOVEMPEVENTHANDLER { 
		class SYNTAX0 { 
			targets[] = { 0,0,0 };
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	};

	class CURSORTARGET { 
		class SYNTAX0 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{} }; 
		}; 
	}; 
	
	class SUPPORTINFO { 
		class SYNTAX0 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"STRING"} }; 
		}; 
	}; 
	
	class ADDLIVESTATS { 
		class SYNTAX0 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"SCALAR"} }; 
		}; 
	}; 
	
	class ALLVARIABLES { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"CONTROL"} }; 
		}; 
		class SYNTAX2 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"TEAM_MEMBER"} }; 
		}; 
		class SYNTAX3 { 
			targets[] = { 0,0,0 };
			args[] = { {},{"NAMESPACE"} }; 
		}; 
		class SYNTAX4 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"OBJECT"} }; 
		}; 
		class SYNTAX5 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"GROUP"} }; 
		}; 
		class SYNTAX6 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"TASK"} }; 
		}; 
		class SYNTAX7 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"LOCATION"} }; 
		}; 
	}; 
	
	class ADDFORCE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class ADDTORQUE { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETVELOCITYMODELSPACE { 
		class SYNTAX1 { 
			targets[] = { 1,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class SETVELOCITYTRANSFORMATION { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {"OBJECT"},{"ARRAY"} }; 
		}; 
	}; 
	
	class ISMULTIPLAYER { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{} }; 
		}; 
	}; 
		
	class ONPRELOADFINISHED { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"STRING","CODE"} }; 
		}; 
	}; 
	
	class ONPRELOADSTARTED { 
		class SYNTAX1 { 
			targets[] = { 0,0,0 }; 
			args[] = { {},{"STRING","CODE"} }; 
		}; 
	};

};
