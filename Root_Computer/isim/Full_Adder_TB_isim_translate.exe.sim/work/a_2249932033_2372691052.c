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
static const char *ng0 = "D:/Study/AUT/Term6/Computer Architecture/VHDL2/Root_Computer/Full_Adder_TB.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_2249932033_2372691052_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int64 t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;

LAB0:    t1 = (t0 + 2992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 5884);
    *((int *)t2) = 0;
    t3 = (t0 + 5888);
    *((int *)t3) = 8;
    t4 = 0;
    t5 = 8;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(63, ng0);

LAB19:    *((char **)t1) = &&LAB20;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 5884);
    t8 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t6, *((int *)t7), 3);
    t9 = (t0 + 3376);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t8, 3U);
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(55, ng0);
    t14 = (9.9999999999999995E-008 * 1LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t14);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 5884);
    t4 = *((int *)t2);
    t3 = (t0 + 5888);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB16:    t15 = (t4 + 1);
    t4 = t15;
    t7 = (t0 + 5884);
    *((int *)t7) = t4;
    goto LAB4;

LAB8:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t15 = (0 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t19 = *((unsigned char *)t2);
    t7 = (t0 + 3440);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t19;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t15 = (1 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t19 = *((unsigned char *)t2);
    t7 = (t0 + 3504);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t19;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t15 = (2 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t19 = *((unsigned char *)t2);
    t7 = (t0 + 3568);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t19;
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(59, ng0);
    t14 = (100 * 1000LL);
    t2 = (t0 + 2800);
    xsi_process_wait(t2, t14);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB6;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB17:    goto LAB2;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_2249932033_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2249932033_2372691052_p_0};
	xsi_register_didat("work_a_2249932033_2372691052", "isim/Full_Adder_TB_isim_translate.exe.sim/work/a_2249932033_2372691052.didat");
	xsi_register_executes(pe);
}
