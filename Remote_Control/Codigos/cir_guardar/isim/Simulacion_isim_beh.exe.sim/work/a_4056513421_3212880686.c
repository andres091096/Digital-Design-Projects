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
static const char *ng0 = "C:/Users/manja/Documents/Digitales/Proyecto/Codigos/cir_guardar/guarda.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4056513421_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 13880);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 13368);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13944);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 13384);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_2(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t1 = (t0 + 22588U);
    t4 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t3, 12, 5);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 14008);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 13400);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 14008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_3(char *t0)
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
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 7096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3112U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(58, ng0);

LAB9:    t2 = (t0 + 13416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t5 = (t0 + 3592U);
    t6 = *((char **)t5);
    t5 = (t0 + 14072);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 22705);
    t5 = (t0 + 14072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB7:    t3 = (t0 + 13416);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_4056513421_3212880686_p_4(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 22572U);
    t4 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t3, 13, 5);
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 14136);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 13432);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 14136);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_5(char *t0)
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
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 7592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 3272U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(65, ng0);

LAB9:    t2 = (t0 + 13448);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(66, ng0);
    t5 = (t0 + 2312U);
    t6 = *((char **)t5);
    t5 = (t0 + 14200);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 22710);
    t5 = (t0 + 14200);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB7:    t3 = (t0 + 13448);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_4056513421_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 14264);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 13464);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(103, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 22572U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 14328);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 13480);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 22572U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 14392);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 13496);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_9(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 22572U);
    t3 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t1);
    t4 = (t0 + 14456);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = t3;
    xsi_driver_first_trans_fast(t4);

LAB2:    t9 = (t0 + 13512);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_10(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    int t6;
    int t7;
    int t8;
    char *t9;
    int t10;
    int t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(106, ng0);

LAB3:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 * 100);
    t1 = (t0 + 4072U);
    t5 = *((char **)t1);
    t6 = *((int *)t5);
    t7 = (t6 * 10);
    t8 = (t4 + t7);
    t1 = (t0 + 3912U);
    t9 = *((char **)t1);
    t10 = *((int *)t9);
    t11 = (t10 * 1);
    t12 = (t8 + t11);
    t1 = (t0 + 14520);
    t13 = (t1 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((int *)t16) = t12;
    xsi_driver_first_trans_fast(t1);

LAB2:    t17 = (t0 + 13528);
    *((int *)t17) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_11(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14584);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 12U, 1, 0LL);

LAB2:    t18 = (t0 + 13544);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14584);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 12U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 15);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_12(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 15);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14648);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 11U, 1, 0LL);

LAB2:    t18 = (t0 + 13560);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14648);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 11U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 30);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_13(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 30);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14712);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 10U, 1, 0LL);

LAB2:    t18 = (t0 + 13576);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14712);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 10U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 45);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_14(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 45);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14776);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 9U, 1, 0LL);

LAB2:    t18 = (t0 + 13592);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14776);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 9U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 60);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_15(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 60);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14840);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 8U, 1, 0LL);

LAB2:    t18 = (t0 + 13608);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14840);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 8U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 75);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_16(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 75);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14904);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 7U, 1, 0LL);

LAB2:    t18 = (t0 + 13624);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14904);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 7U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 90);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_17(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 90);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 14968);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 6U, 1, 0LL);

LAB2:    t18 = (t0 + 13640);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 14968);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 6U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 105);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_18(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 105);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 15032);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 5U, 1, 0LL);

LAB2:    t18 = (t0 + 13656);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 15032);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 5U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 120);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_19(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 120);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 15096);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 4U, 1, 0LL);

LAB2:    t18 = (t0 + 13672);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 15096);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 4U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 135);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_20(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 135);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 15160);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 3U, 1, 0LL);

LAB2:    t18 = (t0 + 13688);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 15160);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 3U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 150);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_21(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 150);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 15224);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 2U, 1, 0LL);

LAB2:    t18 = (t0 + 13704);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 15224);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 2U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 165);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_22(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4392U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 >= 165);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t13 = (t0 + 15288);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)2;
    xsi_driver_first_trans_delta(t13, 1U, 1, 0LL);

LAB2:    t18 = (t0 + 13720);
    *((int *)t18) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 15288);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 1U, 1, 0LL);
    goto LAB2;

LAB5:    t2 = (t0 + 4392U);
    t6 = *((char **)t2);
    t7 = *((int *)t6);
    t8 = (t7 < 180);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_23(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 4392U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t4 = (t3 >= 180);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 15352);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_delta(t9, 0U, 1, 0LL);

LAB2:    t14 = (t0 + 13736);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 15352);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_24(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(140, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 15416);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 13752);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_25(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(141, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 15480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 13768);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_26(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(142, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 15544);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 13784);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4056513421_3212880686_p_27(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(143, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 15608);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 13800);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4056513421_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4056513421_3212880686_p_0,(void *)work_a_4056513421_3212880686_p_1,(void *)work_a_4056513421_3212880686_p_2,(void *)work_a_4056513421_3212880686_p_3,(void *)work_a_4056513421_3212880686_p_4,(void *)work_a_4056513421_3212880686_p_5,(void *)work_a_4056513421_3212880686_p_6,(void *)work_a_4056513421_3212880686_p_7,(void *)work_a_4056513421_3212880686_p_8,(void *)work_a_4056513421_3212880686_p_9,(void *)work_a_4056513421_3212880686_p_10,(void *)work_a_4056513421_3212880686_p_11,(void *)work_a_4056513421_3212880686_p_12,(void *)work_a_4056513421_3212880686_p_13,(void *)work_a_4056513421_3212880686_p_14,(void *)work_a_4056513421_3212880686_p_15,(void *)work_a_4056513421_3212880686_p_16,(void *)work_a_4056513421_3212880686_p_17,(void *)work_a_4056513421_3212880686_p_18,(void *)work_a_4056513421_3212880686_p_19,(void *)work_a_4056513421_3212880686_p_20,(void *)work_a_4056513421_3212880686_p_21,(void *)work_a_4056513421_3212880686_p_22,(void *)work_a_4056513421_3212880686_p_23,(void *)work_a_4056513421_3212880686_p_24,(void *)work_a_4056513421_3212880686_p_25,(void *)work_a_4056513421_3212880686_p_26,(void *)work_a_4056513421_3212880686_p_27};
	xsi_register_didat("work_a_4056513421_3212880686", "isim/Simulacion_isim_beh.exe.sim/work/a_4056513421_3212880686.didat");
	xsi_register_executes(pe);
}
