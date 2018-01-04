/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_18(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_42(char*, char *);
extern void execute_21(char*, char *);
extern void execute_43(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_1(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_2(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_3(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_4(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_5(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_6(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_7(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_8(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_9(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_10(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_11(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_12(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_13(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_14(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_15(char*, char *);
extern void timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_16(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_28(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_17(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_18(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_19(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_20(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_21(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_22(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_23(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_24(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_25(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_26(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_27(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_28(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_29(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_30(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_31(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_32(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_33(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_34(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_35(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_36(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_37(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_38(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_39(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_40(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_41(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_42(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_43(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_44(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_45(char*, char *);
extern void timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_46(char*, char *);
extern void execute_99(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[125] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_34, (funcp)execute_35, (funcp)execute_18, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_38, (funcp)execute_39, (funcp)vlog_timingcheck_execute_0, (funcp)execute_42, (funcp)execute_21, (funcp)execute_43, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_26, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_1, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_2, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_3, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_4, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_5, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_6, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_7, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_8, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_9, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_10, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_11, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_12, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_13, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_14, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_15, (funcp)timing_checker_condition_m_de8eff1b0eb85ce2_2676ddad_16, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_28, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_17, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_18, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_19, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_20, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_21, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_22, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_23, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_24, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_25, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_26, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_27, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_28, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_29, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_30, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_31, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_32, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_33, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_34, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_35, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_36, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_37, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_38, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_39, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_40, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_41, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_42, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_43, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_44, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_45, (funcp)timing_checker_condition_m_c8689ca8a6a9cae0_67151b0a_46, (funcp)execute_99, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_58, (funcp)transaction_66};
const int NumRelocateId= 125;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/ws2811_sim_time_synth/xsim.reloc",  (void **)funcTab, 125);
	iki_vhdl_file_variable_register(dp + 20680);
	iki_vhdl_file_variable_register(dp + 20736);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/ws2811_sim_time_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/ws2811_sim_time_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 25960, dp + 26408, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/ws2811_sim_time_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/ws2811_sim_time_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/ws2811_sim_time_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
