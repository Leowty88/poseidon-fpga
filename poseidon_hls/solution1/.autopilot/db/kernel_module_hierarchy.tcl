set ModuleHierarchy {[{
"Name" : "poseidon_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_poseidon_top_Pipeline_VITIS_LOOP_42_1_fu_784","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_42_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_poseidon_top_Pipeline_VITIS_LOOP_92_3_fu_814","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_92_3","ID" : "4","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "permutation_loop","ID" : "5","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_sbox_quintic_fu_844","ID" : "6","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_849","ID" : "7","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_854","ID" : "8","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_859","ID" : "9","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_864","ID" : "10","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_869","ID" : "11","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_874","ID" : "12","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_879","ID" : "13","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_884","ID" : "14","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_889","ID" : "15","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_894","ID" : "16","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_899","ID" : "17","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_904","ID" : "18","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_909","ID" : "19","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_914","ID" : "20","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_919","ID" : "21","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_924","ID" : "22","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_929","ID" : "23","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_934","ID" : "24","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_939","ID" : "25","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_944","ID" : "26","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_949","ID" : "27","Type" : "sequential"},
	{"Name" : "grp_sbox_quintic_fu_954","ID" : "28","Type" : "sequential"},
	{"Name" : "grp_poseidon_top_Pipeline_mds_row_fu_959","ID" : "29","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "mds_row","ID" : "30","Type" : "pipeline"},]},]},]
}]}