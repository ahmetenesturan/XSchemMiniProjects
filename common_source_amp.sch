v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -90 10 -60 {
lab=Vout}
N 10 -30 30 -30 {
lab=0}
N 30 -30 30 20 {
lab=0}
N 10 20 30 20 {
lab=0}
N 10 0 10 20 {
lab=0}
N 10 20 10 40 {
lab=0}
N 10 -120 30 -120 {
lab=Vdd}
N 30 -170 30 -120 {
lab=Vdd}
N 10 -170 30 -170 {
lab=Vdd}
N 10 -170 10 -150 {
lab=Vdd}
N -70 -120 -30 -120 {
lab=Vbias}
N -70 -30 -30 -30 {
lab=Vin}
N 10 -190 10 -170 {
lab=Vdd}
N 10 -80 180 -80 {
lab=Vout}
N 180 -80 180 -60 {
lab=Vout}
N 180 0 180 30 {
lab=0}
N 10 30 180 30 {
lab=0}
N -340 -0 -340 20 {
lab=0}
N -340 20 -230 20 {
lab=0}
N -160 0 -160 20 {
lab=0}
N -280 0 -280 20 {
lab=0}
N -340 -100 -340 -60 {
lab=Vdd}
N -280 -100 -280 -60 {
lab=Vin}
N -160 -100 -160 -60 {
lab=Vbias}
N -230 20 -160 20 {
lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -10 -30 0 0 {name=M2
L=0.2
W=10  
nf=1 mult=5
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -10 -120 0 0 {name=M11
L=0.2
W=10
nf=1 mult=16
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -70 -120 0 0 {name=p1 sig_type=std_logic lab=Vbias}
C {devices/lab_pin.sym} -70 -30 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 10 40 0 0 {name=p3 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} 10 -190 0 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 180 -80 0 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/capa.sym} 180 -30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -340 -30 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -280 -30 0 0 {name=V2 value="PULSE(0.5 0.48 1u 1n 1n 1u 10u)" savecurrent=false}
C {devices/vsource.sym} -160 -30 0 0 {name=V3 value=1.2 savecurrent=false}
C {devices/lab_pin.sym} -340 20 0 0 {name=p6 sig_type=std_logic lab=0}
C {devices/lab_pin.sym} -340 -100 0 0 {name=p7 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -280 -100 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -160 -100 0 0 {name=p9 sig_type=std_logic lab=Vbias}
C {devices/code.sym} 320 -90 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 490 -70 0 0 {name=s1 only_toplevel=false value=".control
save all
tran 1n 15u
write common_source_amp.raw
plot V(Vout)
.endc"}
