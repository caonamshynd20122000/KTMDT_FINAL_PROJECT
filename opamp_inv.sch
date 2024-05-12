v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1500 -1040 -700 -640 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.857312e-07
x2=1.0425731e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
y1=-0.00014741456
y2=-0.00014650787
color="7 4"
node="vin
vout"
hilight_wave=1}
N -850 -340 -830 -340 {
lab=GND}
N -830 -340 -830 -330 {
lab=GND}
N -860 -470 -840 -470 {
lab=GND}
N -840 -470 -840 -460 {
lab=GND}
N -1100 -430 -1020 -430 {
lab=#net1}
N -1040 -530 -1040 -430 {
lab=#net1}
N -800 -530 -800 -410 {
lab=VOUT}
N -1190 -430 -1160 -430 {
lab=VIN}
N -1130 -390 -1020 -390 {
lab=GND}
N -1130 -390 -1130 -370 {
lab=GND}
N -1290 -430 -1250 -430 {
lab=GND}
N -1290 -430 -1290 -410 {
lab=GND}
N -850 -410 -750 -410 {
lab=VOUT}
N -935 -470 -920 -470 {
lab=#net2}
N -935 -470 -935 -450 {
lab=#net2}
N -935 -370 -935 -340 {
lab=#net3}
N -935 -340 -910 -340 {
lab=#net3}
N -800 -550 -800 -530 {
lab=VOUT}
N -1040 -550 -1040 -530 {
lab=#net1}
N -840 -510 -840 -470 {
lab=GND}
N -820 -550 -800 -550 {
lab=VOUT}
N -910 -510 -840 -510 {
lab=GND}
N -1040 -550 -1000 -550 {
lab=#net1}
N -1130 -410 -1130 -390 {
lab=GND}
N -1000 -550 -940 -550 {
lab=#net1}
N -880 -550 -820 -550 {
lab=VOUT}
N -910 -530 -910 -510 {
lab=GND}
C {devices/vsource.sym} -1220 -430 1 0 {name=V1 value="SIN (0 1m 50K)" savecurrent=false}
C {devices/gnd.sym} -1290 -410 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -880 -340 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -830 -330 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -890 -470 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -840 -460 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -1180 -430 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} -760 -410 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} -1710 -860 0 0 {name=s1 only_toplevel=false value=".save all
.control
tran 0.1u 20u
write opamp_inv.raw
.endc"}
C {devices/gnd.sym} -1130 -370 0 0 {name=l4 lab=GND}
C {devices/code.sym} -1640 -1015 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -1645 -675 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_inv.raw tran"
}
C {sky130_fd_pr/res_high_po.sym} -1130 -430 3 0 {name=R1
W=1
L=1.96
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -910 -550 3 0 {name=R2
W=1
L=471.6
model=res_high_po
spiceprefix=X
mult=1}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -870 -410 0 0 {name=x1}
