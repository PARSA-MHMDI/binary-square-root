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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *SIMPRIM_P_0947159679;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1242562249;
char *IEEE_P_1367372525;
char *SIMPRIM_P_4208868169;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_2717149903_init();
    simprim_p_0947159679_init();
    ieee_p_1367372525_init();
    simprim_p_4208868169_init();
    simprim_a_0094179956_1883126775_0433961640_init();
    simprim_a_4244631919_1883126775_0433961640_init();
    simprim_a_0029141076_1957906245_0433961640_init();
    simprim_a_0121374570_1957906245_0433961640_init();
    simprim_a_3416154084_1957906245_0433961640_init();
    simprim_a_3140472273_1957906245_0433961640_init();
    simprim_a_0359554579_1957906245_0433961640_init();
    simprim_a_0907988929_1912361408_0433961640_init();
    simprim_a_0060070196_1912361408_0433961640_init();
    simprim_a_1013618204_1912361408_0433961640_init();
    simprim_a_0740213596_1912361408_0433961640_init();
    simprim_a_1892196949_2000130859_0433961640_init();
    simprim_a_2340994796_2000130859_0433961640_init();
    simprim_a_1487576392_2000130859_0433961640_init();
    simprim_a_2749350753_2000130859_0433961640_init();
    simprim_a_4098519780_2000130859_0433961640_init();
    simprim_a_1206722184_2000130859_0433961640_init();
    simprim_a_0655462986_2000130859_0433961640_init();
    simprim_a_3839413146_2000130859_0433961640_init();
    simprim_a_0960265129_2000130859_0433961640_init();
    simprim_a_1238422269_1970351474_0433961640_init();
    simprim_a_2878452383_1970351474_0433961640_init();
    simprim_a_0928148981_1970351474_0433961640_init();
    simprim_a_1458974608_1970351474_0433961640_init();
    simprim_a_2066319073_1970351474_0433961640_init();
    simprim_a_3702995043_2431929443_0433961640_init();
    simprim_a_1859873907_2082082460_init();
    simprim_a_3156740924_4150518722_0433961640_init();
    simprim_a_4181367278_3380326129_0433961640_init();
    simprim_a_2155285624_1178295121_0433961640_init();
    work_a_1908458491_0632001823_init();
    work_a_0935477343_2372691052_init();


    xsi_register_tops("work_a_0935477343_2372691052");

    SIMPRIM_P_0947159679 = xsi_get_engine_memory("simprim_p_0947159679");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    SIMPRIM_P_4208868169 = xsi_get_engine_memory("simprim_p_4208868169");

    return xsi_run_simulation(argc, argv);

}
