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
static const char *ng0 = "D:/Study/AUT/Term6/Computer Architecture/Bounes - Project/Implementiation/Project/RadToDeg.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);


static void work_a_3191557889_3212880686_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    int t3;
    double t4;
    double t5;
    char *t6;
    char *t7;
    double t8;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5420U);
    t3 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t2, t1);
    t4 = xsi_vhdl_pow_double(2.0000000000000000, 10);
    t5 = ((((double)(t3))) / t4);
    t6 = (t0 + 1728U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    *((double *)t6) = t5;
    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1728U);
    t2 = *((char **)t1);
    t4 = *((double *)t2);
    t1 = (t0 + 1608U);
    t6 = *((char **)t1);
    t5 = *((double *)t6);
    t8 = (t4 * t5);
    t1 = (t0 + 1848U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((double *)t1) = t8;
    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1848U);
    t2 = *((char **)t1);
    t4 = *((double *)t2);
    t10 = (t4 >= 0);
    if (t10 == 1)
        goto LAB2;

LAB3:    t8 = (t4 - 0.50000000000000000);
    t3 = ((int)(t8));

LAB4:    t1 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, t3, 10);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t12 = *((char **)t7);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 10U);
    xsi_driver_first_trans_fast_port(t6);
    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    t11 = (t4 >= 2147483647);
    if (t11 == 1)
        goto LAB5;

LAB6:    t5 = (t4 + 0.50000000000000000);
    t3 = ((int)(t5));
    goto LAB4;

LAB5:    t3 = 2147483647;
    goto LAB4;

}


extern void work_a_3191557889_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3191557889_3212880686_p_0};
	xsi_register_didat("work_a_3191557889_3212880686", "isim/TB_RadToDeg_isim_beh.exe.sim/work/a_3191557889_3212880686.didat");
	xsi_register_executes(pe);
}
