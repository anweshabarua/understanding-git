n=10^12
n0=75*10^16
y=4.3*10^-5
k=1.38*10^-23
Hv=6.7*10^3
Te=1623
T=400:100:1700
syms v
syms r1
syms G
syms Gc
syms D
D=3.2*exp(-33.77*10^3./T)
G=Hv.*(Te-T)./Te
Gc=16.75*y^3./(G).^2
r1=2*y./G
v=4*pi*(r1.^2)*42553.19*n0.*D
syms n
n=n0*exp(-Gc./(K.*T))
syms R
R=n.*v
plot(T,R)
xlabel('Temperature (C)')
ylabel('R')
title('R=nv as a function of T')
print("I'm a map I'm a map. Dora is my fap")