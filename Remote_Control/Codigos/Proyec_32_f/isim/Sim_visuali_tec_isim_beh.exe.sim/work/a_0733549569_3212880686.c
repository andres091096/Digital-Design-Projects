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
static const char *ng0 = "C:/Users/manja/Documents/Digitales/Proyecto/Codigos/Proyec_32_f/Teclas.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_0733549569_3212880686_p_0(char *t0)
{
    char t9[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t10;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t10 = ((IEEE_P_2592010699) + 4024);
    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 30;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 30);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t6 = xsi_base_array_concat(t6, t9, t10, (char)97, t1, t11, (char)99, t8, (char)101);
    t15 = (31U + 1U);
    t16 = (32U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 5944);
    t17 = (t13 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t6, 32U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t21 = (t0 + 5816);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t15, 0);
    goto LAB6;

}

static void work_a_0733549569_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t4, t6);
    t8 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 2472U);
    t16 = *((char **)t15);
    t15 = (t0 + 6008);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 32U);
    xsi_driver_first_trans_fast(t15);

LAB2:    t21 = (t0 + 5832);
    *((int *)t21) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 2312U);
    t10 = *((char **)t1);
    t1 = (t0 + 6008);
    t11 = (t1 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 32U);
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0733549569_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6072);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5848);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0733549569_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    t1 = (t0 + 5496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2792U);
    t3 = *((char **)t2);
    t2 = (t0 + 10355);
    t5 = xsi_mem_cmp(t2, t3, 32U);
    if (t5 == 1)
        goto LAB5;

LAB18:    t6 = (t0 + 10387);
    t8 = xsi_mem_cmp(t6, t3, 32U);
    if (t8 == 1)
        goto LAB6;

LAB19:    t9 = (t0 + 10419);
    t11 = xsi_mem_cmp(t9, t3, 32U);
    if (t11 == 1)
        goto LAB7;

LAB20:    t12 = (t0 + 10451);
    t14 = xsi_mem_cmp(t12, t3, 32U);
    if (t14 == 1)
        goto LAB8;

LAB21:    t15 = (t0 + 10483);
    t17 = xsi_mem_cmp(t15, t3, 32U);
    if (t17 == 1)
        goto LAB9;

LAB22:    t18 = (t0 + 10515);
    t20 = xsi_mem_cmp(t18, t3, 32U);
    if (t20 == 1)
        goto LAB10;

LAB23:    t21 = (t0 + 10547);
    t23 = xsi_mem_cmp(t21, t3, 32U);
    if (t23 == 1)
        goto LAB11;

LAB24:    t24 = (t0 + 10579);
    t26 = xsi_mem_cmp(t24, t3, 32U);
    if (t26 == 1)
        goto LAB12;

LAB25:    t27 = (t0 + 10611);
    t29 = xsi_mem_cmp(t27, t3, 32U);
    if (t29 == 1)
        goto LAB13;

LAB26:    t30 = (t0 + 10643);
    t32 = xsi_mem_cmp(t30, t3, 32U);
    if (t32 == 1)
        goto LAB14;

LAB27:    t33 = (t0 + 10675);
    t35 = xsi_mem_cmp(t33, t3, 32U);
    if (t35 == 1)
        goto LAB15;

LAB28:    t36 = (t0 + 10707);
    t38 = xsi_mem_cmp(t36, t3, 32U);
    if (t38 == 1)
        goto LAB16;

LAB29:
LAB17:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10799);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(105, ng0);

LAB33:    t2 = (t0 + 5864);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB34;

LAB1:    return;
LAB5:    xsi_set_current_line(106, ng0);
    t39 = (t0 + 10739);
    t41 = (t0 + 6136);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 5U);
    xsi_driver_first_trans_fast_port(t41);
    goto LAB4;

LAB6:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10744);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10749);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10754);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10759);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10764);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10769);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10774);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10779);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10784);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB15:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10789);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB16:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 10794);
    t4 = (t0 + 6136);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 5U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB30:;
LAB31:    t3 = (t0 + 5864);
    *((int *)t3) = 0;
    goto LAB2;

LAB32:    goto LAB31;

LAB34:    goto LAB32;

}


extern void work_a_0733549569_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0733549569_3212880686_p_0,(void *)work_a_0733549569_3212880686_p_1,(void *)work_a_0733549569_3212880686_p_2,(void *)work_a_0733549569_3212880686_p_3};
	xsi_register_didat("work_a_0733549569_3212880686", "isim/Sim_visuali_tec_isim_beh.exe.sim/work/a_0733549569_3212880686.didat");
	xsi_register_executes(pe);
}
