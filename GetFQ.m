%w-frequency
%z-dampling
%lon
[V,R_lon]=eig(A_lon);
R_lon=diag(R_lon);
t=-C_lon*inv(A_lon)*B_lon+D_lon;
dnda=t(1,1)/t(2,1)/-9.8;
%short period
i=1;
wsp=abs(R_lon(i));      
zsp=-real(R_lon(i))/wsp;%0.3~2.0
t=wsp^2/dnda;           %0.85~3.6
%phugoid
i=3;
wp=abs(R_lon(i));       
zp=-real(R_lon(i))/wp;  %>0.04

%lat
[V,R_lat]=eig(A_lat);
R_lat=diag(R_lat);
%roll subsidence
i=2;
Tr=-log(2)/real(R_lat(i));%<1.0
%dutch roll
i=4;
wdr=abs(R_lat(i));      %>1.0
zdr=-real(R_lat(i))/wdr;%>0.08
wzdr=wdr*zdr;           %>0.15
%sprial
i=3;
Ts=log(2)/real(R_lat(i));%>20