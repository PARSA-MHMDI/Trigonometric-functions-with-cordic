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
static const char *ng0 = "D:/Study/AUT/Term6/Computer Architecture/Bounes - Project/Implementiation/Project/Top.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1335952598_3212880686_p_0(char *t0)
{
    char t15[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4592);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1832U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB12:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(90, ng0);
    t3 = (t0 + 2952U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 8463);
    t4 = (t0 + 4736);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 10U);
    xsi_driver_first_trans_fast(t4);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 2792U);
    t10 = *((char **)t3);
    t3 = (t0 + 4672);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 10U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB11:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 4672);
    t7 = (t1 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 10U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 8473);
    t4 = (t0 + 4736);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 10U);
    xsi_driver_first_trans_fast(t4);

LAB14:    goto LAB6;

LAB13:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t1 = (t0 + 8328U);
    t7 = (t0 + 2632U);
    t10 = *((char **)t7);
    t7 = (t0 + 8328U);
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t15, t4, t1, t10, t7);
    t12 = (t15 + 12U);
    t16 = *((unsigned int *)t12);
    t17 = (1U * t16);
    t6 = (10U != t17);
    if (t6 == 1)
        goto LAB16;

LAB17:    t13 = (t0 + 4736);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 10U);
    xsi_driver_first_trans_fast(t13);
    goto LAB14;

LAB16:    xsi_size_not_matching(10U, t17, 0);
    goto LAB17;

}


extern void work_a_1335952598_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1335952598_3212880686_p_0};
	xsi_register_didat("work_a_1335952598_3212880686", "isim/TB_TOP_isim_beh.exe.sim/work/a_1335952598_3212880686.didat");
	xsi_register_executes(pe);
}
