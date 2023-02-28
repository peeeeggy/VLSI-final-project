*final project
.prot
.lib "/home/u109/u109060028/VLSI/cic018.l" TT
.temp 25
.unprot
.option
+ post
.inc "/home/u109/u109060028/VLSI_composer/FINAL_PROJECT/FINAL_TEST4.spi"
*.inc "/home/u109/u109060028/VLSI_composer/FINAL_PORJECT/FINAL_TEST5.spi"
.param v_h = 1.8
.param v_l = 0

* CIRCUIT *
x1 A<0> A<1> A<2> A<3> A<4> A<5> A<6> A<7> A<8> A<9> CLK 
+ DOUT<0> DOUT<1> VDD VREF VSS FINAL_TEST4

*X2 A<0> A<1> A<2> A<3> A<4> A<5> A<6> A<7> A<8> A<9> CLK 
*+ DOUT<0> DOUT<1> PRE_B SAEN VDD VREF VSS WL_EN FINAL_TEST5

* VOLTAGE SOURCE *
VVDD VDD 0 1.8
VVSS VSS 0 0
VCLK CLK 0 PULSE 0 1.8 10n 0.01n 0.01n 4.99n 10n

* V_REFERENCE*
VVREF VREF 0 1.79

* TIMING CONTROL *
*VWL_EN1 WL_EN1 	0 pulse 0 1.8 10.8n 0.01n 0.01n 4.99n 10n
*VWL_EN2 WL_EN2 	0 pulse 0 1.8 11n 0.01n 0.01n 4.99n 10n
*VSA_EN 	SAEN	0 pulse 0 1.8 11.5n 0.01n 0.01n 4.99n 10n
*VPRE_B	PRE_B	0 PULSE 0 1.8 10.8n 0.01n 0.01n 4.99n 10n

* INPUT SIGNAL *
* for Ysel_FF (MUX8TO1)
VA<0>	A<0>	0	pwl(0 0 1n 0 1.01n v_h 10.99n v_h 11n 0 
					+ 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_h 30.99n v_h 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_l 50.99n v_l 51n 0)
VA<1>	A<1>	0	pwl(0 0 1n 0 1.01n v_h 10.99n v_h 11n 0 
					+ 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_h 30.99n v_h 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_l 50.99n v_l 51n 0)
VA<2>	A<2>	0	pwl(0 0 1n 0 1.01n v_h 10.99n v_h 11n 0 
					+ 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_h 30.99n v_h 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_l 50.99n v_l 51n 0)
* for Xsel_FF (7to128 Decoder)
VA<3>	A<3>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<4>	A<4>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<5>	A<5>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<6>	A<6>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<7>	A<7>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<8>	A<8>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
VA<9>	A<9>	0	pwl(0 0 11n 0 11.01n v_h 20.99n v_h 21n 0
					+ 21.01n v_l 30.99n v_l 31n 0
					+ 31.01n v_l 40.99n v_l 41n 0
					+ 41.01n v_h 50.99n v_h 51n 0)
* TRANSIENT ANALYSIS *
.tran 1p 65n

.meas tran avgpower0 AVG P(VVDD) from=20ns  to=60ns

.probe V(DOUT<0>)
.probe V(DOUT<1>)



* ALTER *
.alter
.lib "/home/u109/u109060028/VLSI/cic018.l" SS

.alter
.lib "/home/u109/u109060028/VLSI/cic018.l" FF

.alter
.lib "/home/u109/u109060028/VLSI/cic018.l" SF

.alter
.lib "/home/u109/u109060028/VLSI/cic018.l" FS

*.alter
*.include '../laker/Final.pex.spi'


.END
