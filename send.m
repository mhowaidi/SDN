
c1= 5.049;
distance_capacitance = xlsread ('D:\matlab WPT\NEW_DATA1.csv');
d =find(distance_capacitance==c1);
c=distance_capacitance(d,2);
c_pf=c.*10e-13;
Cp=86.7e-12;
kp= 13.884; % proportional coefficient of compensation inductor 
ksi=7.074;  % proportional coefficient of compensation capacitor 
f=650e3; %frequence Hz
Lf1=15e-6; %compensation parameter for primary inductor  
Cex21=275.69e-12; %compensation parameter for secondary capacitor 
L1=kp*Lf1;
Cf21=8.27*Cex21;
w=2.*pi.*f;
Cf1=(L1+Lf1)./((w^2).*L1.*Lf1);
L21=212.22e-6;
Lf21=L21/ksi;
Cex1=(1+kp)./((w^2).*L1.*kp)-Cp;