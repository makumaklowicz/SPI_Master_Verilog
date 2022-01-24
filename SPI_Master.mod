MODEL
MODEL_VERSION "v1998.8";
DESIGN "SPI_Master";

/* port names and type */
INPUT S:PIN143 = btn0;
INPUT S:PIN39 = MISO;
INPUT S:PIN2 = Input_data<0>;
INPUT S:PIN4 = Input_data<1>;
INPUT S:PIN6 = Input_data<2>;
INPUT S:PIN9 = Input_data<3>;
INPUT S:PIN3 = Input_data<4>;
INPUT S:PIN5 = Input_data<5>;
INPUT S:PIN7 = Input_data<6>;
INPUT S:PIN10 = Input_data<7>;
OUTPUT S:PIN142 = MOSI;
OUTPUT S:PIN139 = NCS;
OUTPUT S:PIN136 = Out_clock;
OUTPUT S:PIN119 = Output_data<0>;
OUTPUT S:PIN117 = Output_data<1>;
OUTPUT S:PIN115 = Output_data<2>;
OUTPUT S:PIN113 = Output_data<3>;
OUTPUT S:PIN104 = Output_data<4>;
OUTPUT S:PIN102 = Output_data<5>;
OUTPUT S:PIN100 = Output_data<6>;
OUTPUT S:PIN97 = Output_data<7>;

/* timing arc definitions */
btn0_MOSI_delay: DELAY btn0 MOSI;
btn0_NCS_delay: DELAY btn0 NCS;
btn0_Out_clock_delay: DELAY btn0 Out_clock;
btn0_Output_data<0>_delay: DELAY btn0 Output_data<0>;
btn0_Output_data<1>_delay: DELAY btn0 Output_data<1>;
btn0_Output_data<2>_delay: DELAY btn0 Output_data<2>;
btn0_Output_data<3>_delay: DELAY btn0 Output_data<3>;
btn0_Output_data<4>_delay: DELAY btn0 Output_data<4>;
btn0_Output_data<5>_delay: DELAY btn0 Output_data<5>;
btn0_Output_data<6>_delay: DELAY btn0 Output_data<6>;
btn0_Output_data<7>_delay: DELAY btn0 Output_data<7>;

/* timing check arc definitions */
ENDMODEL
