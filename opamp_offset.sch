v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -545 -185 -515 -185 {
lab=GND}
N -545 -185 -545 -155 {
lab=GND}
N -245 -125 -245 -95 {
lab=GND}
N -245 -205 -215 -205 {
lab=VOUT0}
N -235 -385 -235 -355 {
lab=GND}
N -235 -465 -205 -465 {
lab=VOUT1}
N -535 -485 -515 -485 {
lab=GND}
N -535 -485 -535 -365 {
lab=GND}
N -430 -225 -415 -225 {
lab=GND}
N -430 -315 -430 -225 {
lab=GND}
N -330 -165 -330 -125 {
lab=#net1}
N -330 -125 -305 -125 {
lab=#net1}
N -455 -315 -390 -315 {
lab=GND}
N -455 -315 -455 -285 {
lab=GND}
N -330 -315 -330 -245 {
lab=#net2}
N -320 -575 -320 -505 {
lab=#net3}
N -445 -575 -380 -575 {
lab=GND}
N -445 -575 -445 -545 {
lab=GND}
N -320 -385 -295 -385 {
lab=#net4}
N -320 -425 -320 -385 {
lab=#net4}
N -455 -185 -415 -185 {
lab=VIN0}
N -455 -485 -405 -485 {
lab=VIN1}
N -535 -445 -405 -445 {
lab=GND}
C {devices/vsource.sym} -360 -315 1 0 {name=V2 value=1.8 savecurrent=false}
C {devices/vsource.sym} -275 -125 3 0 {name=V1 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -485 -185 1 0 {name=V3 value=1 savecurrent=false}
C {devices/gnd.sym} -245 -95 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -545 -155 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -455 -285 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -215 -205 0 0 {name=p1 sig_type=std_logic lab=VOUT0}
C {devices/vsource.sym} -265 -385 3 0 {name=V5 value=-1.8 savecurrent=false}
C {devices/vsource.sym} -485 -485 1 0 {name=V6 value=1 savecurrent=false}
C {devices/gnd.sym} -235 -355 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} -535 -365 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -445 -545 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -205 -465 0 0 {name=p2 sig_type=std_logic lab=VOUT1}
C {devices/lab_wire.sym} -420 -485 0 0 {name=p3 sig_type=std_logic lab=VIN1}
C {devices/lab_wire.sym} -430 -185 0 0 {name=p4 sig_type=std_logic lab=VIN0}
C {devices/vsource.sym} -350 -575 1 0 {name=V4 value=1.8 savecurrent=false}
C {devices/code_shown.sym} -745 -550 0 0 {name=s1 only_toplevel=false value="
.control
save all
*tran 1m 100m
dc V3 -1.8 1.8 1m
write v3_offset.raw
dc V6 -1.8 1.8 1m
write v6_offset.raw
.endc
"}
C {devices/code.sym} -750 -300 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -255 -465 0 0 {name=x1}
C {/foss/designs/FINAL_PROJECT_KTMDT/opamp.sym} -265 -205 0 0 {name=x2}
