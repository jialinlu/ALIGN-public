#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)

set title" #Blocks= 37, #Terminals= 18, #Nets= 25, Area=1.2553e+09, HPWL= 371072 "

set nokey
#   Uncomment these two lines starting with "set"
#   to save an EPS file for inclusion into a latex document
# set terminal postscript eps color solid 20
# set output "result.eps"

#   Uncomment these two lines starting with "set"
#   to save a PS file for printing
# set terminal postscript portrait color solid 20
# set output "result.ps"


set xrange [-37410:37410]

set yrange [-50:37410]

set label "xi3" at 25200 , 18732 center 

set label "bypass" at 14640 , 4032


set label "clk_boost" at 14640 , 4032


set label "clk_in" at 14640 , 4032


set label "B" at 27600 , 7224


set label "B" at 16880 , 11424


set label "vss" at 20880 , 8400


set label "vss" at 23760 , 4200


set label "B" at 34960 , 11424


set label "S" at 34960 , 8568


set label "B" at 29040 , 7224


set label "B" at 15440 , 11424


set label "B" at 26000 , 11592


set label "B" at 24560 , 11592


set label "B" at 28080 , 11592


set label "S" at 28080 , 8736


set label "B" at 26000 , 7392


set label "S" at 26000 , 4536


set label "xi4" at 1680 , 17640 center 

set label "i" at 160 , 15624


set label "vss" at 160 , 15624


set label "zn" at 160 , 15624


set label "B" at 2400 , 18816


set label "S" at 2400 , 15960


set label "xi0" at 8640 , 17640 center 

set label "i" at 7120 , 15624


set label "vss" at 7120 , 15624


set label "zn" at 7120 , 15624


set label "B" at 9360 , 18816


set label "S" at 9360 , 15960


set label "m0" at 10640 , 9744 center 

set label "B" at 10640 , 10920


set label "G" at 10480 , 9744


set label "S" at 10320 , 8148


set label "m1" at 13840 , 9744 center 

set label "B" at 13840 , 10920


set label "G" at 14000 , 9744


set label "S" at 14160 , 8148


set label "m56" at 4000 , 21672 center 

set label "B" at 4000 , 22848


set label "S" at 3680 , 20832


set label "m31" at 10960 , 21336 center 

set label "B" at 10960 , 22512


set label "D" at 10800 , 19824


set label "G" at 10800 , 21336


set label "S" at 10960 , 19656


set label "m16" at 800 , 5880 center 

set label "B" at 800 , 7056


set label "D" at 640 , 4368


set label "G" at 640 , 5880


set label "S" at 800 , 4200


set label "m21" at 12400 , 21336 center 

set label "B" at 12400 , 22512


set label "D" at 12240 , 19824


set label "G" at 12240 , 21336


set label "S" at 12400 , 19656


set label "m15" at 17040 , 2016 center 

set label "B" at 17040 , 3192


set label "D" at 16880 , 504


set label "G" at 16880 , 2016


set label "S" at 17040 , 336


set label "m32" at 9120 , 5880 center 

set label "B" at 9120 , 7056


set label "D" at 8960 , 4368


set label "G" at 8960 , 5880


set label "S" at 9120 , 4200


set label "m38" at 2240 , 2016 center 

set label "B" at 2240 , 3192


set label "D" at 2080 , 504


set label "G" at 2080 , 2016


set label "S" at 2240 , 336


set label "m39" at 4000 , 13608 center 

set label "B" at 4000 , 14784


set label "D" at 3840 , 12096


set label "G" at 3840 , 13608


set label "S" at 4000 , 11928


set label "m33" at 18480 , 2016 center 

set label "B" at 18480 , 3192


set label "D" at 18320 , 504


set label "G" at 18320 , 2016


set label "S" at 18480 , 336


set label "m6" at 2240 , 5880 center 

set label "B" at 2240 , 7056


set label "D" at 2400 , 4368


set label "G" at 2400 , 5880


set label "S" at 2240 , 4200


set label "m62" at 10640 , 5880 center 

set label "B" at 10640 , 7056


set label "D" at 10480 , 4368


set label "G" at 10480 , 5880


set label "S" at 10640 , 4200


set label "m61" at 13840 , 5880 center 

set label "B" at 13840 , 7056


set label "D" at 14000 , 4368


set label "G" at 14000 , 5880


set label "S" at 13840 , 4200


set label "m58" at 12400 , 25200 center 

set label "B" at 12400 , 26376


set label "S" at 12080 , 24360


set label "m57" at 3680 , 2016 center 

set label "B" at 3680 , 3192


set label "S" at 3360 , 1176


set label "m54" at 36560 , 2016 center 

set label "B" at 36560 , 3192


set label "S" at 36240 , 1176


set label "m30" at 10960 , 13608 center 

set label "B" at 10960 , 14784


set label "D" at 10800 , 12096


set label "G" at 10800 , 13608


set label "S" at 10960 , 11928


set label "m28" at 7760 , 9744 center 

set label "B" at 7760 , 10920


set label "D" at 7600 , 8232


set label "G" at 7600 , 9744


set label "S" at 7760 , 8064


set label "m20" at 9200 , 13608 center 

set label "B" at 9200 , 14784


set label "D" at 9040 , 12096


set label "G" at 9040 , 13608


set label "S" at 9200 , 11928


set label "m2" at 800 , 9744 center 

set label "B" at 800 , 10920


set label "D" at 640 , 8232


set label "G" at 640 , 9744


set label "S" at 800 , 8064


set label "m29" at 9200 , 9744 center 

set label "B" at 9200 , 10920


set label "D" at 9360 , 8232


set label "G" at 9360 , 9744


set label "S" at 9200 , 8064


set label "m19" at 12400 , 13608 center 

set label "B" at 12400 , 14784


set label "D" at 12240 , 12096


set label "G" at 12240 , 13608


set label "S" at 12400 , 11928


set label "m34" at 2240 , 13608 center 

set label "B" at 2240 , 14784


set label "D" at 2080 , 12096


set label "G" at 2080 , 13608


set label "S" at 2240 , 11928


set label "m9" at 2240 , 9744 center 

set label "B" at 2240 , 10920


set label "D" at 2400 , 8232


set label "G" at 2400 , 9744


set label "S" at 2240 , 8064


set label "m49_m48" at 5680 , 17472 center 

set label "B" at 5680 , 18648


set label "DA" at 5680 , 16716


set label "DB" at 5840 , 16884


set label "S" at 5680 , 15792


set label "m41_m37" at 14960 , 2016 center 

set label "B" at 14960 , 3192


set label "DA" at 14480 , 504


set label "DB" at 15440 , 672


set label "G" at 14960 , 2016


set label "S" at 14960 , 336


set label "m45_m47" at 7040 , 5880 center 

set label "B" at 7040 , 7056


set label "DA" at 6560 , 4368


set label "DB" at 7520 , 4536


set label "G" at 7040 , 5880


set label "S" at 7040 , 4200


set label "m44_m46" at 4320 , 5880 center 

set label "B" at 4320 , 7056


set label "DA" at 4800 , 4368


set label "DB" at 3840 , 4536


set label "G" at 4320 , 5880


set label "S" at 4320 , 4200


set label "m42_m43" at 5680 , 9744 center 

set label "B" at 5680 , 10920


set label "DA" at 5840 , 9072


set label "DB" at 6000 , 9240


set label "SA" at 5040 , 8064


set label "SB" at 6320 , 8232


set label "m13_m14" at 12240 , 5880 center 

set label "B" at 12240 , 7056


set label "DA" at 11920 , 4368


set label "DB" at 12240 , 4536


set label "GA" at 11920 , 5880


set label "GB" at 12240 , 6048


set label "S" at 12240 , 4200


set label "m17_m18" at 12240 , 9744 center 

set label "B" at 12240 , 10920


set label "DA" at 11920 , 8232


set label "DB" at 12240 , 8400


set label "GA" at 11920 , 9744


set label "GB" at 12240 , 9912


set label "S" at 12240 , 8064


set label "m40_m36" at 12240 , 17472 center 

set label "B" at 12240 , 18648


set label "DA" at 11760 , 15960


set label "DB" at 12720 , 16296


set label "G" at 12240 , 17472


set label "SA" at 11600 , 15792


set label "SB" at 12880 , 16128


set label "m12_m10" at 12240 , 2016 center 

set label "B" at 12240 , 3192


set label "DA" at 11760 , 504


set label "DB" at 12720 , 840


set label "G" at 12240 , 2016


set label "SA" at 11600 , 336


set label "SB" at 12880 , 672


set label "fine_boost" at 12240 , 0 center 

set label "fine" at 14640 , 0 center 

set label "clk" at 18320 , 0 center 

set label "flipb" at 18320 , 0 center 

set label "flip" at 0 , 13608 center 

set label "outm" at 0 , 4368 center 

set label "intern" at 0 , 5880 center 

set label "clkn" at 18480 , 0 center 

set label "vmidb" at 2080 , 0 center 

set label "vxn2" at 15440 , 0 center 

set label "vmid" at 0 , 12096 center 

set label "vxp2" at 14480 , 0 center 

set label "outp" at 0 , 4368 center 

set label "interp" at 0 , 5880 center 

set label "vxp" at 12720 , 0 center 

set label "vxn" at 11760 , 0 center 

set label "_net1" at 11920 , 0 center 

set label "_net0" at 12240 , 0 center 

plot[:][:] '-' with lines linestyle 3, '-' with lines linestyle 7, '-' with lines linestyle 1, '-' with lines linestyle 0

# block xi3 select 0 bsize 4
	14640	4032
	14640	33432
	35760	33432
	35760	4032
	14640	4032

# block xi4 select 0 bsize 4
	160	15624
	160	19656
	3200	19656
	3200	15624
	160	15624

# block xi0 select 0 bsize 4
	7120	15624
	7120	19656
	10160	19656
	10160	15624
	7120	15624

# block m0 select 0 bsize 4
	10000	7896
	10000	11592
	11280	11592
	11280	7896
	10000	7896

# block m1 select 0 bsize 4
	14480	7896
	14480	11592
	13200	11592
	13200	7896
	14480	7896

# block m56 select 0 bsize 4
	3360	19824
	3360	23520
	4640	23520
	4640	19824
	3360	19824

# block m31 select 0 bsize 4
	10320	19488
	10320	23184
	11600	23184
	11600	19488
	10320	19488

# block m16 select 0 bsize 4
	160	4032
	160	7728
	1440	7728
	1440	4032
	160	4032

# block m21 select 0 bsize 4
	11760	19488
	11760	23184
	13040	23184
	13040	19488
	11760	19488

# block m15 select 0 bsize 4
	16400	168
	16400	3864
	17680	3864
	17680	168
	16400	168

# block m32 select 0 bsize 4
	8480	4032
	8480	7728
	9760	7728
	9760	4032
	8480	4032

# block m38 select 0 bsize 4
	1600	168
	1600	3864
	2880	3864
	2880	168
	1600	168

# block m39 select 0 bsize 4
	3360	11760
	3360	15456
	4640	15456
	4640	11760
	3360	11760

# block m33 select 0 bsize 4
	17840	168
	17840	3864
	19120	3864
	19120	168
	17840	168

# block m6 select 0 bsize 4
	2880	4032
	2880	7728
	1600	7728
	1600	4032
	2880	4032

# block m62 select 0 bsize 4
	10000	4032
	10000	7728
	11280	7728
	11280	4032
	10000	4032

# block m61 select 0 bsize 4
	14480	4032
	14480	7728
	13200	7728
	13200	4032
	14480	4032

# block m58 select 0 bsize 4
	11760	23352
	11760	27048
	13040	27048
	13040	23352
	11760	23352

# block m57 select 0 bsize 4
	3040	168
	3040	3864
	4320	3864
	4320	168
	3040	168

# block m54 select 0 bsize 4
	35920	168
	35920	3864
	37200	3864
	37200	168
	35920	168

# block m30 select 0 bsize 4
	10320	11760
	10320	15456
	11600	15456
	11600	11760
	10320	11760

# block m28 select 0 bsize 4
	7120	7896
	7120	11592
	8400	11592
	8400	7896
	7120	7896

# block m20 select 0 bsize 4
	8560	11760
	8560	15456
	9840	15456
	9840	11760
	8560	11760

# block m2 select 0 bsize 4
	160	7896
	160	11592
	1440	11592
	1440	7896
	160	7896

# block m29 select 0 bsize 4
	9840	7896
	9840	11592
	8560	11592
	8560	7896
	9840	7896

# block m19 select 0 bsize 4
	11760	11760
	11760	15456
	13040	15456
	13040	11760
	11760	11760

# block m34 select 0 bsize 4
	1600	11760
	1600	15456
	2880	15456
	2880	11760
	1600	11760

# block m9 select 0 bsize 4
	2880	7896
	2880	11592
	1600	11592
	1600	7896
	2880	7896

# block m49_m48 select 0 bsize 4
	4400	15624
	4400	19320
	6960	19320
	6960	15624
	4400	15624

# block m41_m37 select 0 bsize 4
	13680	168
	13680	3864
	16240	3864
	16240	168
	13680	168

# block m45_m47 select 0 bsize 4
	5760	4032
	5760	7728
	8320	7728
	8320	4032
	5760	4032

# block m44_m46 select 0 bsize 4
	5600	4032
	5600	7728
	3040	7728
	3040	4032
	5600	4032

# block m42_m43 select 0 bsize 4
	4400	7896
	4400	11592
	6960	11592
	6960	7896
	4400	7896

# block m13_m14 select 0 bsize 4
	11440	4032
	11440	7728
	13040	7728
	13040	4032
	11440	4032

# block m17_m18 select 0 bsize 4
	11440	7896
	11440	11592
	13040	11592
	13040	7896
	11440	7896

# block m40_m36 select 0 bsize 4
	10960	15624
	10960	19320
	13520	19320
	13520	15624
	10960	15624

# block m12_m10 select 0 bsize 4
	10960	168
	10960	3864
	13520	3864
	13520	168
	10960	168


EOF
	14640	4032
	14640	4032
	14640	4032
	14640	4032
	14640	4032

	14640	4032
	14640	4032
	14640	4032
	14640	4032
	14640	4032

	14640	4032
	14640	4032
	14640	4032
	14640	4032
	14640	4032

	27032	7192
	27032	7256
	28168	7256
	28168	7192
	27032	7192

	16312	11392
	16312	11456
	17448	11456
	17448	11392
	16312	11392

	20880	8400
	20880	8400
	20880	8400
	20880	8400
	20880	8400

	23760	4200
	23760	4200
	23760	4200
	23760	4200
	23760	4200

	34392	11392
	34392	11456
	35528	11456
	35528	11392
	34392	11392

	34728	8536
	34728	8600
	35192	8600
	35192	8536
	34728	8536

	28472	7192
	28472	7256
	29608	7256
	29608	7192
	28472	7192

	14872	11392
	14872	11456
	16008	11456
	16008	11392
	14872	11392

	25432	11560
	25432	11624
	26568	11624
	26568	11560
	25432	11560

	23992	11560
	23992	11624
	25128	11624
	25128	11560
	23992	11560

	26872	11560
	26872	11624
	29288	11624
	29288	11560
	26872	11560

	27208	8704
	27208	8768
	28952	8768
	28952	8704
	27208	8704

	25432	7360
	25432	7424
	26568	7424
	26568	7360
	25432	7360

	25768	4504
	25768	4568
	26232	4568
	26232	4504
	25768	4504

	160	15624
	160	15624
	160	15624
	160	15624
	160	15624

	160	15624
	160	15624
	160	15624
	160	15624
	160	15624

	160	15624
	160	15624
	160	15624
	160	15624
	160	15624

	1832	18784
	1832	18848
	2968	18848
	2968	18784
	1832	18784

	2168	15928
	2168	15992
	2632	15992
	2632	15928
	2168	15928

	7120	15624
	7120	15624
	7120	15624
	7120	15624
	7120	15624

	7120	15624
	7120	15624
	7120	15624
	7120	15624
	7120	15624

	7120	15624
	7120	15624
	7120	15624
	7120	15624
	7120	15624

	8792	18784
	8792	18848
	9928	18848
	9928	18784
	8792	18784

	9128	15928
	9128	15992
	9592	15992
	9592	15928
	9128	15928

	10072	10888
	10072	10952
	11208	10952
	11208	10888
	10072	10888

	10248	9712
	10248	9776
	10712	9776
	10712	9712
	10248	9712

	10280	7992
	10280	8304
	10360	8304
	10360	7992
	10280	7992

	14408	10888
	14408	10952
	13272	10952
	13272	10888
	14408	10888

	14232	9712
	14232	9776
	13768	9776
	13768	9712
	14232	9712

	14200	7992
	14200	8304
	14120	8304
	14120	7992
	14200	7992

	3432	22816
	3432	22880
	4568	22880
	4568	22816
	3432	22816

	3640	19920
	3640	21744
	3720	21744
	3720	19920
	3640	19920

	10392	22480
	10392	22544
	11528	22544
	11528	22480
	10392	22480

	10568	19792
	10568	19856
	11032	19856
	11032	19792
	10568	19792

	10568	21304
	10568	21368
	11032	21368
	11032	21304
	10568	21304

	10728	19624
	10728	19688
	11192	19688
	11192	19624
	10728	19624

	232	7024
	232	7088
	1368	7088
	1368	7024
	232	7024

	408	4336
	408	4400
	872	4400
	872	4336
	408	4336

	408	5848
	408	5912
	872	5912
	872	5848
	408	5848

	568	4168
	568	4232
	1032	4232
	1032	4168
	568	4168

	11832	22480
	11832	22544
	12968	22544
	12968	22480
	11832	22480

	12008	19792
	12008	19856
	12472	19856
	12472	19792
	12008	19792

	12008	21304
	12008	21368
	12472	21368
	12472	21304
	12008	21304

	12168	19624
	12168	19688
	12632	19688
	12632	19624
	12168	19624

	16472	3160
	16472	3224
	17608	3224
	17608	3160
	16472	3160

	16648	472
	16648	536
	17112	536
	17112	472
	16648	472

	16648	1984
	16648	2048
	17112	2048
	17112	1984
	16648	1984

	16808	304
	16808	368
	17272	368
	17272	304
	16808	304

	8552	7024
	8552	7088
	9688	7088
	9688	7024
	8552	7024

	8728	4336
	8728	4400
	9192	4400
	9192	4336
	8728	4336

	8728	5848
	8728	5912
	9192	5912
	9192	5848
	8728	5848

	8888	4168
	8888	4232
	9352	4232
	9352	4168
	8888	4168

	1672	3160
	1672	3224
	2808	3224
	2808	3160
	1672	3160

	1848	472
	1848	536
	2312	536
	2312	472
	1848	472

	1848	1984
	1848	2048
	2312	2048
	2312	1984
	1848	1984

	2008	304
	2008	368
	2472	368
	2472	304
	2008	304

	3432	14752
	3432	14816
	4568	14816
	4568	14752
	3432	14752

	3608	12064
	3608	12128
	4072	12128
	4072	12064
	3608	12064

	3608	13576
	3608	13640
	4072	13640
	4072	13576
	3608	13576

	3768	11896
	3768	11960
	4232	11960
	4232	11896
	3768	11896

	17912	3160
	17912	3224
	19048	3224
	19048	3160
	17912	3160

	18088	472
	18088	536
	18552	536
	18552	472
	18088	472

	18088	1984
	18088	2048
	18552	2048
	18552	1984
	18088	1984

	18248	304
	18248	368
	18712	368
	18712	304
	18248	304

	2808	7024
	2808	7088
	1672	7088
	1672	7024
	2808	7024

	2632	4336
	2632	4400
	2168	4400
	2168	4336
	2632	4336

	2632	5848
	2632	5912
	2168	5912
	2168	5848
	2632	5848

	2472	4168
	2472	4232
	2008	4232
	2008	4168
	2472	4168

	10072	7024
	10072	7088
	11208	7088
	11208	7024
	10072	7024

	10248	4336
	10248	4400
	10712	4400
	10712	4336
	10248	4336

	10248	5848
	10248	5912
	10712	5912
	10712	5848
	10248	5848

	10408	4168
	10408	4232
	10872	4232
	10872	4168
	10408	4168

	14408	7024
	14408	7088
	13272	7088
	13272	7024
	14408	7024

	14232	4336
	14232	4400
	13768	4400
	13768	4336
	14232	4336

	14232	5848
	14232	5912
	13768	5912
	13768	5848
	14232	5848

	14072	4168
	14072	4232
	13608	4232
	13608	4168
	14072	4168

	11832	26344
	11832	26408
	12968	26408
	12968	26344
	11832	26344

	12040	23448
	12040	25272
	12120	25272
	12120	23448
	12040	23448

	3112	3160
	3112	3224
	4248	3224
	4248	3160
	3112	3160

	3320	264
	3320	2088
	3400	2088
	3400	264
	3320	264

	35992	3160
	35992	3224
	37128	3224
	37128	3160
	35992	3160

	36200	264
	36200	2088
	36280	2088
	36280	264
	36200	264

	10392	14752
	10392	14816
	11528	14816
	11528	14752
	10392	14752

	10568	12064
	10568	12128
	11032	12128
	11032	12064
	10568	12064

	10568	13576
	10568	13640
	11032	13640
	11032	13576
	10568	13576

	10728	11896
	10728	11960
	11192	11960
	11192	11896
	10728	11896

	7192	10888
	7192	10952
	8328	10952
	8328	10888
	7192	10888

	7368	8200
	7368	8264
	7832	8264
	7832	8200
	7368	8200

	7368	9712
	7368	9776
	7832	9776
	7832	9712
	7368	9712

	7528	8032
	7528	8096
	7992	8096
	7992	8032
	7528	8032

	8632	14752
	8632	14816
	9768	14816
	9768	14752
	8632	14752

	8808	12064
	8808	12128
	9272	12128
	9272	12064
	8808	12064

	8808	13576
	8808	13640
	9272	13640
	9272	13576
	8808	13576

	8968	11896
	8968	11960
	9432	11960
	9432	11896
	8968	11896

	232	10888
	232	10952
	1368	10952
	1368	10888
	232	10888

	408	8200
	408	8264
	872	8264
	872	8200
	408	8200

	408	9712
	408	9776
	872	9776
	872	9712
	408	9712

	568	8032
	568	8096
	1032	8096
	1032	8032
	568	8032

	9768	10888
	9768	10952
	8632	10952
	8632	10888
	9768	10888

	9592	8200
	9592	8264
	9128	8264
	9128	8200
	9592	8200

	9592	9712
	9592	9776
	9128	9776
	9128	9712
	9592	9712

	9432	8032
	9432	8096
	8968	8096
	8968	8032
	9432	8032

	11832	14752
	11832	14816
	12968	14816
	12968	14752
	11832	14752

	12008	12064
	12008	12128
	12472	12128
	12472	12064
	12008	12064

	12008	13576
	12008	13640
	12472	13640
	12472	13576
	12008	13576

	12168	11896
	12168	11960
	12632	11960
	12632	11896
	12168	11896

	1672	14752
	1672	14816
	2808	14816
	2808	14752
	1672	14752

	1848	12064
	1848	12128
	2312	12128
	2312	12064
	1848	12064

	1848	13576
	1848	13640
	2312	13640
	2312	13576
	1848	13576

	2008	11896
	2008	11960
	2472	11960
	2472	11896
	2008	11896

	2808	10888
	2808	10952
	1672	10952
	1672	10888
	2808	10888

	2632	8200
	2632	8264
	2168	8264
	2168	8200
	2632	8200

	2632	9712
	2632	9776
	2168	9776
	2168	9712
	2632	9712

	2472	8032
	2472	8096
	2008	8096
	2008	8032
	2472	8032

	4472	18616
	4472	18680
	6888	18680
	6888	18616
	4472	18616

	5640	15888
	5640	17544
	5720	17544
	5720	15888
	5640	15888

	5800	16056
	5800	17712
	5880	17712
	5880	16056
	5800	16056

	4808	15760
	4808	15824
	6552	15824
	6552	15760
	4808	15760

	13752	3160
	13752	3224
	16168	3224
	16168	3160
	13752	3160

	14248	472
	14248	536
	14712	536
	14712	472
	14248	472

	15208	640
	15208	704
	15672	704
	15672	640
	15208	640

	14248	1984
	14248	2048
	15672	2048
	15672	1984
	14248	1984

	14088	304
	14088	368
	15832	368
	15832	304
	14088	304

	5832	7024
	5832	7088
	8248	7088
	8248	7024
	5832	7024

	6328	4336
	6328	4400
	6792	4400
	6792	4336
	6328	4336

	7288	4504
	7288	4568
	7752	4568
	7752	4504
	7288	4504

	6328	5848
	6328	5912
	7752	5912
	7752	5848
	6328	5848

	6168	4168
	6168	4232
	7912	4232
	7912	4168
	6168	4168

	5528	7024
	5528	7088
	3112	7088
	3112	7024
	5528	7024

	5032	4336
	5032	4400
	4568	4400
	4568	4336
	5032	4336

	4072	4504
	4072	4568
	3608	4568
	3608	4504
	4072	4504

	5032	5848
	5032	5912
	3608	5912
	3608	5848
	5032	5848

	5192	4168
	5192	4232
	3448	4232
	3448	4168
	5192	4168

	4472	10888
	4472	10952
	6888	10952
	6888	10888
	4472	10888

	5800	8328
	5800	9816
	5880	9816
	5880	8328
	5800	8328

	5960	8496
	5960	9984
	6040	9984
	6040	8496
	5960	8496

	4808	8032
	4808	8096
	5272	8096
	5272	8032
	4808	8032

	6088	8200
	6088	8264
	6552	8264
	6552	8200
	6088	8200

	11512	7024
	11512	7088
	12968	7088
	12968	7024
	11512	7024

	11688	4336
	11688	4400
	12152	4400
	12152	4336
	11688	4336

	12008	4504
	12008	4568
	12472	4568
	12472	4504
	12008	4504

	11688	5848
	11688	5912
	12152	5912
	12152	5848
	11688	5848

	12008	6016
	12008	6080
	12472	6080
	12472	6016
	12008	6016

	11848	4168
	11848	4232
	12632	4232
	12632	4168
	11848	4168

	11512	10888
	11512	10952
	12968	10952
	12968	10888
	11512	10888

	11688	8200
	11688	8264
	12152	8264
	12152	8200
	11688	8200

	12008	8368
	12008	8432
	12472	8432
	12472	8368
	12008	8368

	11688	9712
	11688	9776
	12152	9776
	12152	9712
	11688	9712

	12008	9880
	12008	9944
	12472	9944
	12472	9880
	12008	9880

	11848	8032
	11848	8096
	12632	8096
	12632	8032
	11848	8032

	11032	18616
	11032	18680
	13448	18680
	13448	18616
	11032	18616

	11528	15928
	11528	15992
	11992	15992
	11992	15928
	11528	15928

	12488	16264
	12488	16328
	12952	16328
	12952	16264
	12488	16264

	11528	17440
	11528	17504
	12952	17504
	12952	17440
	11528	17440

	11368	15760
	11368	15824
	11832	15824
	11832	15760
	11368	15760

	12648	16096
	12648	16160
	13112	16160
	13112	16096
	12648	16096

	11032	3160
	11032	3224
	13448	3224
	13448	3160
	11032	3160

	11528	472
	11528	536
	11992	536
	11992	472
	11528	472

	12488	808
	12488	872
	12952	872
	12952	808
	12488	808

	11528	1984
	11528	2048
	12952	2048
	12952	1984
	11528	1984

	11368	304
	11368	368
	11832	368
	11832	304
	11368	304

	12648	640
	12648	704
	13112	704
	13112	640
	12648	640


EOF

	12220	-20
	12220	20
	12260	20
	12260	-20
	12220	-20

	14620	-20
	14620	20
	14660	20
	14660	-20
	14620	-20

	18300	-20
	18300	20
	18340	20
	18340	-20
	18300	-20

	18300	-20
	18300	20
	18340	20
	18340	-20
	18300	-20

	-20	13588
	-20	13628
	20	13628
	20	13588
	-20	13588

	-20	4348
	-20	4388
	20	4388
	20	4348
	-20	4348

	-20	5860
	-20	5900
	20	5900
	20	5860
	-20	5860

	18460	-20
	18460	20
	18500	20
	18500	-20
	18460	-20

	2060	-20
	2060	20
	2100	20
	2100	-20
	2060	-20

	15420	-20
	15420	20
	15460	20
	15460	-20
	15420	-20

	-20	12076
	-20	12116
	20	12116
	20	12076
	-20	12076

	14460	-20
	14460	20
	14500	20
	14500	-20
	14460	-20

	-20	4348
	-20	4388
	20	4388
	20	4348
	-20	4348

	-20	5860
	-20	5900
	20	5900
	20	5860
	-20	5860

	12700	-20
	12700	20
	12740	20
	12740	-20
	12700	-20

	11740	-20
	11740	20
	11780	20
	11780	-20
	11740	-20

	11900	-20
	11900	20
	11940	20
	11940	-20
	11900	-20

	12220	-20
	12220	20
	12260	20
	12260	-20
	12220	-20

EOF

#Net: fine_boost
	14640	4032
	12240	2016
	14640	4032

	14640	4032
	12240	0
	14640	4032


#Net: fine
	14640	4032
	14640	0
	14640	4032


#Net: net073

#Net: clk
	7120	15624
	18320	504
	7120	15624

	7120	15624
	10480	5880
	7120	15624

	7120	15624
	14000	5880
	7120	15624

	7120	15624
	10800	13608
	7120	15624

	7120	15624
	2080	12096
	7120	15624

	7120	15624
	18320	0
	7120	15624


#Net: clkb
	7120	15624
	12240	21336
	7120	15624

	7120	15624
	9040	13608
	7120	15624


#Net: net066
	10480	9744
	12880	672
	10480	9744


#Net: net065
	14000	9744
	11600	336
	14000	9744


#Net: flipb
	10800	19824
	18320	2016
	10800	19824

	10800	19824
	10800	12096
	10800	19824

	10800	19824
	12240	13608
	10800	19824

	10800	19824
	14960	2016
	10800	19824

	10800	19824
	12240	17472
	10800	19824

	10800	19824
	18320	0
	10800	19824


#Net: flip
	10800	21336
	12240	19824
	10800	21336

	10800	21336
	8960	5880
	10800	21336

	10800	21336
	7600	8232
	10800	21336

	10800	21336
	9360	8232
	10800	21336

	10800	21336
	2080	13608
	10800	21336

	10800	21336
	0	13608
	10800	21336


#Net: outm
	640	4368
	640	8232
	640	4368

	640	4368
	0	4368
	640	4368


#Net: intern
	640	5880
	640	9744
	640	5880

	640	5880
	5840	16884
	640	5880

	640	5880
	7520	4536
	640	5880

	640	5880
	6000	9240
	640	5880

	640	5880
	0	5880
	640	5880


#Net: net05
	16880	504
	12240	4200
	16880	504


#Net: clkn
	16880	2016
	8960	4368
	16880	2016

	16880	2016
	18480	336
	16880	2016

	16880	2016
	2240	11928
	16880	2016

	16880	2016
	18480	0
	16880	2016


#Net: vmidb
	2080	504
	6560	4368
	2080	504

	2080	504
	6320	8232
	2080	504

	2080	504
	2080	0
	2080	504


#Net: vxn2
	2080	2016
	15440	672
	2080	2016

	2080	2016
	7040	5880
	2080	2016

	2080	2016
	12720	16296
	2080	2016

	2080	2016
	15440	0
	2080	2016


#Net: vmid
	3840	12096
	4800	4368
	3840	12096

	3840	12096
	5040	8064
	3840	12096

	3840	12096
	0	12096
	3840	12096


#Net: vxp2
	3840	13608
	14480	504
	3840	13608

	3840	13608
	4320	5880
	3840	13608

	3840	13608
	11760	15960
	3840	13608

	3840	13608
	14480	0
	3840	13608


#Net: outp
	2400	4368
	2400	8232
	2400	4368

	2400	4368
	0	4368
	2400	4368


#Net: interp
	2400	5880
	2400	9744
	2400	5880

	2400	5880
	5680	16716
	2400	5880

	2400	5880
	3840	4536
	2400	5880

	2400	5880
	5840	9072
	2400	5880

	2400	5880
	0	5880
	2400	5880


#Net: vxp
	10640	4200
	9360	9744
	10640	4200

	10640	4200
	11920	4368
	10640	4200

	10640	4200
	11920	8232
	10640	4200

	10640	4200
	11600	15792
	10640	4200

	10640	4200
	12720	840
	10640	4200

	10640	4200
	12720	0
	10640	4200


#Net: vxn
	13840	4200
	7600	9744
	13840	4200

	13840	4200
	12240	4536
	13840	4200

	13840	4200
	12240	8400
	13840	4200

	13840	4200
	12880	16128
	13840	4200

	13840	4200
	11760	504
	13840	4200

	13840	4200
	11760	0
	13840	4200


#Net: net027
	7760	8064
	9040	12096
	7760	8064

	7760	8064
	9200	8064
	7760	8064


#Net: net04
	12240	12096
	12240	8064
	12240	12096


#Net: _net1
	11920	5880
	11920	9744
	11920	5880

	11920	5880
	11920	0
	11920	5880


#Net: _net0
	12240	6048
	12240	9912
	12240	6048

	12240	6048
	12240	0
	12240	6048


EOF

pause -1 'Press any key'