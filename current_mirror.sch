v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -100 120 -100 {
lab=#net1}
N 80 -100 80 -40 {
lab=#net1}
N 20 -40 80 -40 {
lab=#net1}
N 20 -70 20 -40 {
lab=#net1}
N 0 -100 20 -100 {
lab=#net2}
N 0 -150 0 -100 {
lab=#net2}
N 0 -150 20 -150 {
lab=#net2}
N 20 -150 20 -130 {
lab=#net2}
N 160 -100 180 -100 {
lab=#net2}
N 180 -150 180 -100 {
lab=#net2}
N 160 -150 180 -150 {
lab=#net2}
N 160 -150 160 -130 {
lab=#net2}
N 20 -180 20 -150 {
lab=#net2}
N 20 -180 160 -180 {
lab=#net2}
N 160 -180 160 -150 {
lab=#net2}
N 20 -40 20 -10 {
lab=#net1}
N 160 -70 160 -10 {
lab=#net3}
N 20 50 20 100 {
lab=#net4}
N 160 50 160 100 {
lab=#net4}
N 20 100 160 100 {
lab=#net4}
N 20 20 40 20 {
lab=#net4}
N 40 20 40 70 {
lab=#net4}
N 20 70 40 70 {
lab=#net4}
N -60 20 -20 20 {
lab=#net5}
N -60 20 -60 40 {
lab=#net5}
N -60 90 -60 100 {
lab=#net4}
N -60 100 20 100 {
lab=#net4}
N -140 90 -140 100 {
lab=#net4}
N -140 100 -60 100 {
lab=#net4}
N -140 -180 -140 30 {
lab=#net2}
N -140 -180 20 -180 {
lab=#net2}
C {sky130_fd_pr/pfet_01v8.sym} 40 -100 0 1 {name=M11
L=0.15
W=1
nf=1 mult=10
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -100 0 0 {name=M1
L=0.15
W=1
nf=1 mult=20
model=pfet_01v8
spiceprefix=X
}
C {devices/res.sym} 160 20 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/nfet_01v8.sym} 0 20 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=5
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -60 60 0 0 {name=V1 value=1 savecurrent=false}
C {devices/vsource.sym} -140 60 0 0 {name=VDD value=1.8 savecurrent=false}
C {devices/code.sym} 360 -120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/code_shown.sym} 380 50 0 0 {name=s1 only_toplevel=false value=".control
op
save all
write op.raw
.endc"}
C {devices/launcher.sym} 430 170 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
