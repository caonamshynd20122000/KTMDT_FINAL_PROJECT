v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1020 -730 -220 -330 {flags=graph
y1=-1.6e-08
y2=0.001
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0}
N -280 -240 -260 -240 {
lab=GND}
N -260 -240 -260 -230 {
lab=GND}
N -355 -240 -340 -240 {
lab=#net1}
N -355 -240 -355 -220 {
lab=#net1}
N -270 -110 -250 -110 {
lab=GND}
N -250 -110 -250 -100 {
lab=GND}
N -355 -140 -355 -110 {
lab=#net2}
N -355 -110 -330 -110 {
lab=#net2}
N -670 -160 -650 -160 {
lab=GND}
N -670 -160 -670 -120 {
lab=GND}
N -460 -160 -440 -160 {
lab=VIN}
N -590 -160 -460 -160 {
lab=VIN}
N -270 -180 -160 -180 {
lab=VOUT}
N -480 -200 -440 -200 {
lab=VOUT}
N -480 -280 -480 -200 {
lab=VOUT}
N -480 -280 -220 -280 {
lab=VOUT}
N -220 -280 -220 -180 {
lab=VOUT}
N -200 -180 -200 -170 {
lab=VOUT}
N -250 -110 -200 -110 {
lab=GND}
C {devices/vsource.sym} -310 -240 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -260 -230 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -300 -110 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -250 -100 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -620 -160 1 0 {name=V1 value="PULSE (0 1 0.5p 100u 100u 10m 20m)" savecurrent=false}
C {devices/gnd.sym} -670 -120 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -500 -160 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -170 -180 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/launcher.sym} -960 -280 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/buffer.raw tran"
}
C {devices/code.sym} -1210 -570 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -1200 -720 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 100u 100m
write buffer.raw
.endc
"}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -290 -180 0 0 {name=x1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -200 -140 2 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=5 spiceprefix=X}
