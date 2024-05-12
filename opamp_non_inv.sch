v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2210 -1130 -1410 -730 {flags=graph


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
y1=-0.00011
y2=9.7e-05
color="7 4"
node="vin
vout"
hilight_wave=1}
N -1560 -430 -1540 -430 {
lab=GND}
N -1540 -430 -1540 -420 {
lab=GND}
N -1570 -560 -1550 -560 {
lab=GND}
N -1550 -560 -1550 -550 {
lab=GND}
N -1810 -520 -1730 -520 {
lab=#net1}
N -1750 -620 -1750 -520 {
lab=#net1}
N -1510 -620 -1510 -500 {
lab=VOUT}
N -1900 -520 -1870 -520 {
lab=GND}
N -1840 -480 -1840 -460 {
lab=GND}
N -2000 -520 -1960 -520 {
lab=GND}
N -2000 -520 -2000 -500 {
lab=GND}
N -1560 -500 -1460 -500 {
lab=VOUT}
N -1645 -560 -1630 -560 {
lab=#net2}
N -1645 -560 -1645 -540 {
lab=#net2}
N -1645 -460 -1645 -430 {
lab=#net3}
N -1645 -430 -1620 -430 {
lab=#net3}
N -1510 -640 -1510 -620 {
lab=VOUT}
N -1750 -640 -1750 -620 {
lab=#net1}
N -1550 -600 -1550 -560 {
lab=GND}
N -1530 -640 -1510 -640 {
lab=VOUT}
N -1620 -600 -1550 -600 {
lab=GND}
N -1750 -640 -1710 -640 {
lab=#net1}
N -1840 -500 -1840 -480 {
lab=GND}
N -1710 -640 -1650 -640 {
lab=#net1}
N -1590 -640 -1530 -640 {
lab=VOUT}
N -1620 -620 -1620 -600 {
lab=GND}
N -1960 -520 -1900 -520 {
lab=GND}
N -1760 -480 -1730 -480 {
lab=VIN}
N -1840 -480 -1820 -480 {
lab=GND}
C {devices/gnd.sym} -2000 -500 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -1590 -430 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -1540 -420 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1600 -560 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1550 -550 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -1470 -500 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} -2420 -950 0 0 {name=s1 only_toplevel=false value=".save all
.control
tran 0.1u 20u
write opamp_inv.raw
.endc"}
C {devices/gnd.sym} -1840 -460 0 0 {name=l4 lab=GND}
C {devices/code.sym} -2350 -1105 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -2355 -765 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_inv.raw tran"
}
C {sky130_fd_pr/res_high_po.sym} -1840 -520 3 0 {name=R1
W=1
L=1.96
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po.sym} -1620 -640 3 0 {name=R2
W=1
L=314.2
model=res_high_po
spiceprefix=X
mult=1}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -1580 -500 0 0 {name=x1}
C {devices/vsource.sym} -1790 -480 1 0 {name=V1 value="SIN (0 1u 50K)" savecurrent=false}
C {devices/lab_wire.sym} -1740 -480 0 0 {name=p1 sig_type=std_logic lab=VIN}
