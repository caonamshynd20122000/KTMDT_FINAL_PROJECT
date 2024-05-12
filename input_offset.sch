v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1490 -860 -690 -460 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
y1=-0.69
y2=-0.68
color="7 17"
node="vin
vout"
hilight_wave=1}
N -840 -160 -820 -160 {
lab=GND}
N -820 -160 -820 -150 {
lab=GND}
N -850 -290 -830 -290 {
lab=GND}
N -830 -290 -830 -280 {
lab=GND}
N -1090 -250 -1010 -250 {
lab=GND}
N -1180 -250 -1150 -250 {
lab=GND}
N -1120 -210 -1120 -190 {
lab=GND}
N -1280 -250 -1240 -250 {
lab=GND}
N -1280 -250 -1280 -230 {
lab=GND}
N -840 -230 -740 -230 {
lab=VOUT}
N -925 -290 -910 -290 {
lab=#net1}
N -925 -290 -925 -270 {
lab=#net1}
N -925 -190 -925 -160 {
lab=#net2}
N -925 -160 -900 -160 {
lab=#net2}
N -1040 -210 -1010 -210 {
lab=#net3}
N -1150 -250 -1090 -250 {
lab=GND}
N -1240 -250 -1230 -250 {
lab=GND}
N -1230 -250 -1180 -250 {
lab=GND}
N -1120 -210 -1100 -210 {
lab=GND}
C {devices/gnd.sym} -1280 -230 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -870 -160 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -820 -150 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -880 -290 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -830 -280 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -750 -230 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} -1700 -680 0 0 {name=s1 only_toplevel=false value=".save all
.control
tran 0.1u 20u
write input_offset.raw
.endc"}
C {devices/gnd.sym} -1120 -190 0 0 {name=l4 lab=GND}
C {devices/code.sym} -1630 -835 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -1645 -495 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/input_offset.raw tran"
}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -860 -230 0 0 {name=x1}
C {devices/vsource.sym} -1070 -210 3 0 {name=V4 value="-16n" savecurrent=false}
