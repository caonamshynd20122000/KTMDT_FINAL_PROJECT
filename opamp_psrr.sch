v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -2340 -1455 -1540 -1055 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.9898316e-06
x2=1.4789832e-05
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
y1=-0.6811216
y2=-0.68110225
color="7 4"
node="vin
vout2"
hilight_wave=1}
N -1740 -970 -1720 -970 {
lab=GND}
N -1720 -970 -1720 -960 {
lab=GND}
N -2130 -890 -2130 -870 {
lab=GND}
N -1850 -910 -1750 -910 {
lab=VOUT1}
N -1935 -970 -1920 -970 {
lab=Vdd}
N -1935 -970 -1935 -950 {
lab=Vdd}
N -1935 -870 -1935 -840 {
lab=Vss}
N -1935 -840 -1910 -840 {
lab=Vss}
N -2050 -890 -2020 -890 {
lab=GND}
N -2130 -890 -2110 -890 {
lab=GND}
N -2110 -890 -2050 -890 {
lab=GND}
N -1860 -970 -1830 -970 {
lab=#net1}
N -1770 -970 -1740 -970 {
lab=GND}
N -1735 -840 -1715 -840 {
lab=GND}
N -1715 -840 -1715 -830 {
lab=GND}
N -1765 -840 -1735 -840 {
lab=GND}
N -1850 -840 -1825 -840 {
lab=#net2}
N -1840 -1015 -1840 -910 {
lab=VOUT1}
N -2060 -1015 -1840 -1015 {
lab=VOUT1}
N -2060 -1015 -2060 -930 {
lab=VOUT1}
N -2060 -930 -2020 -930 {
lab=VOUT1}
C {devices/vsource.sym} -1880 -840 3 0 {name=V2 value="AC 1 0" savecurrent=false}
C {devices/vsource.sym} -1890 -970 3 0 {name=V3 value="AC 1 0" savecurrent=false}
C {devices/gnd.sym} -1720 -960 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -1760 -910 0 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/code_shown.sym} -2705 -1275 0 0 {name=s1 only_toplevel=false value=".save all
.control
ac dec 100 1 1G
let PSRR = \{(v(Vdd))/(v(VOUT1))\} 
let PSRR_db = \{20*log10(PSRR)\}
PLOT PSRR_db
write opamp_psrr.raw
.endc"}
C {devices/gnd.sym} -2130 -870 0 0 {name=l4 lab=GND}
C {devices/code.sym} -2715 -1440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -2660 -1095 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/opamp_psrr.raw tran"
}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -1870 -910 0 0 {name=x1}
C {devices/lab_wire.sym} -1935 -965 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/lab_wire.sym} -1935 -845 0 0 {name=p4 sig_type=std_logic lab=Vss}
C {devices/vsource.sym} -1800 -970 3 0 {name=V5 value=1.8 savecurrent=false}
C {devices/gnd.sym} -1715 -830 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -1795 -840 3 0 {name=V6 value=-1.8 savecurrent=false}
