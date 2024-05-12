v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -1280 -800 -480 -400 {flags=graph
y1=-1e-06
y2=1.2e-06
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


dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=0


color="5 6"
node="vin
vout"}
N -1020 -230 -1000 -230 {
lab=GND}
N -1020 -230 -1020 -190 {
lab=GND}
N -540 -250 -480 -250 {
lab=VOUT}
N -630 -330 -600 -330 {
lab=GND}
N -600 -330 -600 -305 {
lab=GND}
N -620 -180 -600 -180 {
lab=GND}
N -600 -180 -600 -150 {
lab=GND}
N -705 -180 -680 -180 {
lab=#net1}
N -705 -210 -705 -180 {
lab=#net1}
N -705 -330 -690 -330 {
lab=#net2}
N -705 -330 -705 -290 {
lab=#net2}
N -620 -250 -540 -250 {
lab=VOUT}
N -790 -370 -790 -270 {
lab=VOUT}
N -790 -370 -540 -370 {
lab=VOUT}
N -540 -370 -540 -250 {
lab=VOUT}
N -940 -230 -790 -230 {
lab=VIN}
C {devices/gnd.sym} -1020 -190 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -485 -250 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -660 -330 3 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -600 -305 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -650 -180 3 0 {name=V2 value=-1.8 savecurrent=false}
C {devices/gnd.sym} -600 -150 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} -850 -230 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/launcher.sym} -1420 -450 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/buffer.raw tran"
}
C {devices/code.sym} -1470 -640 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} -1460 -790 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 1m 100m
write buffer.raw
.endc
"}
C {/foss/designs/sky130_hcmus_ip__instramp/xschem/opamp.sym} -640 -250 0 0 {name=x1}
C {devices/vsource.sym} -970 -230 1 0 {name=V1 value="SIN (0 1u 10hz)" savecurrent=false}
