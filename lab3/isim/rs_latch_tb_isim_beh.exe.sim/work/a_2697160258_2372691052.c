/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/brand/Documents/folder/lab3/rs_latch_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2697160258_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;

LAB0:    t1 = (t0 + 2672U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3304);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t10 = (10 * 1000LL);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, t10);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2697160258_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;

LAB0:    t1 = (t0 + 2920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3368);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(87, ng0);
    t10 = (20 * 1000LL);
    t2 = (t0 + 2728);
    xsi_process_wait(t2, t10);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}


extern void work_a_2697160258_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2697160258_2372691052_p_0,(void *)work_a_2697160258_2372691052_p_1};
	xsi_register_didat("work_a_2697160258_2372691052", "isim/rs_latch_tb_isim_beh.exe.sim/work/a_2697160258_2372691052.didat");
	xsi_register_executes(pe);
}
