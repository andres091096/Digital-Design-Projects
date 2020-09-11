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
static const char *ng0 = "C:/Users/manja/Documents/Digitales/Proyecto/Codigos/Proyec_32_f/fsm_senal.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);


static void work_a_3188484110_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6168);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2632U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 6360);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t1;
    xsi_driver_first_trans_fast(t2);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 6360);
    t11 = (t4 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);
    goto LAB9;

}

static void work_a_3188484110_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB11, &&LAB5, &&LAB6, &&LAB9, &&LAB8, &&LAB10, &&LAB7};

LAB0:    t1 = (t0 + 4360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(59, ng0);

LAB14:    t2 = (t0 + 6184);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB15;

LAB1:    return;
LAB5:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 10595);
    t7 = (t0 + 6424);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 5U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10600);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10605);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10610);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10615);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB10:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10620);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB11:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 10625);
    t5 = (t0 + 6424);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB12:    t3 = (t0 + 6184);
    *((int *)t3) = 0;
    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_3188484110_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6488);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6200);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3188484110_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(70, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (3 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6552);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6216);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3188484110_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (2 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6616);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6232);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3188484110_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (1 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6680);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6248);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3188484110_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t3 = (0 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6744);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 6264);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3188484110_3212880686_p_7(char *t0)
{
    char t13[16];
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t14;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5, &&LAB8, &&LAB7, &&LAB9, &&LAB6};

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6280);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB12:    goto LAB2;

LAB4:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB2;

LAB5:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t12 = (t7 == (unsigned char)2);
    if (t12 == 1)
        goto LAB23;

LAB24:    t6 = (unsigned char)0;

LAB25:    if (t6 == 1)
        goto LAB20;

LAB21:    t3 = (unsigned char)0;

LAB22:    if (t3 != 0)
        goto LAB17;

LAB19:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t12 = (t7 == (unsigned char)2);
    if (t12 == 1)
        goto LAB31;

LAB32:    t6 = (unsigned char)0;

LAB33:    if (t6 == 1)
        goto LAB28;

LAB29:    t3 = (unsigned char)0;

LAB30:    if (t3 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)2);
    if (t7 == 1)
        goto LAB36;

LAB37:    t3 = (unsigned char)0;

LAB38:    if (t3 != 0)
        goto LAB34;

LAB35:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t12 = (t7 == (unsigned char)2);
    if (t12 == 1)
        goto LAB44;

LAB45:    t6 = (unsigned char)0;

LAB46:    if (t6 == 1)
        goto LAB41;

LAB42:    t3 = (unsigned char)0;

LAB43:    if (t3 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB49;

LAB50:    t3 = (unsigned char)0;

LAB51:    if (t3 != 0)
        goto LAB47;

LAB48:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB2;

LAB6:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB52;

LAB54:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB53:    goto LAB2;

LAB7:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB55;

LAB57:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB56:    goto LAB2;

LAB8:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB58;

LAB60:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB59:    goto LAB2;

LAB9:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB61;

LAB63:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t3;
    xsi_driver_first_trans_fast(t1);

LAB62:    goto LAB2;

LAB10:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 6808);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB11:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 6808);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB12;

LAB14:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(92, ng0);
    t11 = (t0 + 6808);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)6;
    xsi_driver_first_trans_fast(t11);
    goto LAB18;

LAB20:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 10524U);
    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t15, 300000, 19);
    t16 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t15);
    t3 = t16;
    goto LAB22;

LAB23:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 10524U);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t13, 500000, 19);
    t14 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t4, t1, t5, t13);
    t6 = t14;
    goto LAB25;

LAB26:    xsi_set_current_line(94, ng0);
    t11 = (t0 + 6808);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB18;

LAB28:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 10524U);
    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t15, 60000, 19);
    t16 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t15);
    t3 = t16;
    goto LAB30;

LAB31:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 10524U);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t13, 200000, 18);
    t14 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t4, t1, t5, t13);
    t6 = t14;
    goto LAB33;

LAB34:    xsi_set_current_line(96, ng0);
    t8 = (t0 + 6808);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    *((unsigned char *)t17) = (unsigned char)4;
    xsi_driver_first_trans_fast(t8);
    goto LAB18;

LAB36:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 10524U);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t13, 60000, 19);
    t12 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t4, t1, t5, t13);
    t3 = t12;
    goto LAB38;

LAB39:    xsi_set_current_line(98, ng0);
    t11 = (t0 + 6808);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)5;
    xsi_driver_first_trans_fast(t11);
    goto LAB18;

LAB41:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 10524U);
    t10 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t15, 210000, 18);
    t16 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t15);
    t3 = t16;
    goto LAB43;

LAB44:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 10524U);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t13, 300000, 19);
    t14 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t4, t1, t5, t13);
    t6 = t14;
    goto LAB46;

LAB47:    xsi_set_current_line(100, ng0);
    t8 = (t0 + 6808);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t17 = *((char **)t11);
    *((unsigned char *)t17) = (unsigned char)0;
    xsi_driver_first_trans_fast(t8);
    goto LAB18;

LAB49:    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 10524U);
    t5 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t13, 500000, 19);
    t12 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t4, t1, t5, t13);
    t3 = t12;
    goto LAB51;

LAB52:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB53;

LAB55:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB56;

LAB58:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB59;

LAB61:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB62;

}


extern void work_a_3188484110_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3188484110_3212880686_p_0,(void *)work_a_3188484110_3212880686_p_1,(void *)work_a_3188484110_3212880686_p_2,(void *)work_a_3188484110_3212880686_p_3,(void *)work_a_3188484110_3212880686_p_4,(void *)work_a_3188484110_3212880686_p_5,(void *)work_a_3188484110_3212880686_p_6,(void *)work_a_3188484110_3212880686_p_7};
	xsi_register_didat("work_a_3188484110_3212880686", "isim/Sim_visuali_tec_isim_beh.exe.sim/work/a_3188484110_3212880686.didat");
	xsi_register_executes(pe);
}
