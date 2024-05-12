v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1970 -1210 -1170 -810 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N -1205 -350 -1205 -330 {
lab=GND}
N -810 -355 -810 -335 {
lab=GND}
N -985 -445 -955 -445 {
lab=INP}
N -985 -485 -985 -445 {
lab=INP}
N -985 -485 -955 -485 {
lab=INP}
N -1000 -670 -1000 -620 {
lab=GND}
N -1000 -770 -1000 -730 {
lab=INP}
N -995 -465 -985 -465 {
lab=INP}
N -870 -525 -870 -505 {
lab=#net1}
N -870 -525 -865 -525 {
lab=#net1}
N -1265 -530 -1265 -500 {
lab=#net2}
N -1120 -775 -1120 -730 {
lab=INN}
N -1390 -480 -1350 -480 {
lab=INN}
N -1390 -440 -1350 -440 {
lab=INP}
N -1180 -460 -1100 -460 {
lab=OUT}
N -785 -465 -730 -465 {
lab=OUT1}
N -805 -525 -790 -525 {
lab=GND}
N -1205 -530 -1185 -530 {
lab=GND}
N -1265 -420 -1265 -350 {
lab=#net3}
N -870 -425 -870 -355 {
lab=#net4}
N -1120 -620 -1000 -620 {
lab=GND}
N -1120 -670 -1120 -620 {
lab=GND}
N -1070 -620 -1070 -590 {
lab=GND}
N -810 -350 -730 -350 {
lab=GND}
N -1205 -350 -1140 -350 {
lab=GND}
N -730 -392.5 -730 -350 {
lab=GND}
N -730 -465 -730 -452.5 {
lab=OUT1}
N -1140 -460 -1140 -437.5 {
lab=OUT}
N -1140 -377.5 -1140 -350 {
lab=GND}
C {devices/vsource.sym} -1120 -700 0 0 {name=V6 value="AC 1 180" savecurrent=false}
C {devices/vsource.sym} -1000 -700 0 0 {name=V5 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -1070 -590 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1235 -530 3 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1185 -530 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1235 -350 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -1205 -330 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -835 -525 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -790 -525 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -840 -355 3 0 {name=V4 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -810 -335 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -1120 -755 0 0 {name=p1 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -1000 -740 0 0 {name=p2 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -1110 -460 0 0 {name=p3 sig_type=std_logic lab=OUT}
C {devices/lab_wire.sym} -735 -465 0 0 {name=p4 sig_type=std_logic lab=OUT1}
C {devices/code_shown.sym} -1740 -585 0 0 {name=s2 only_toplevel=false value=".control
save all
ac dec 100 1 10G
let Ad = \{v(OUT)/(v(INP)-v(INN))\}
let Acm = \{v(OUT1)/v(INP)\}
let CMRR = \{20*log10(Ad/Acm)\}
let Ao = \{20*log10(Ad)\}
save Ad Acm CMRR Ao
write opamp_cmrr.raw
PLOT Ao
PLOT CMRR
PLOT Ad
.endc"}
C {devices/code.sym} -1540 -750 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/lab_wire.sym} -990 -465 0 0 {name=p5 sig_type=std_logic lab=INP}
C {devices/lab_wire.sym} -1365 -480 0 0 {name=p6 sig_type=std_logic lab=INN}
C {devices/lab_wire.sym} -1365 -440 0 0 {name=p7 sig_type=std_logic lab=INP}
C {devices/launcher.sym} -1900 -790 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_cmrr.raw tran"
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -1140 -407.5 2 0 {name=C3 model=cap_mim_m3_1 W=10 L=10 MF=5 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -730 -420 2 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=5 spiceprefix=X}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -1200 -460 0 0 {name=x1}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -805 -465 0 0 {name=x2}
