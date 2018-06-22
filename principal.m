%% SETUP
clear;% clc;
%% INPUT
x=[ .01 , .05 , .1 , .5 , 1 , 5 , 10 , 50 , 100 ];
y=[ 6.078e-11, ...
    7.595e-9, ...
    6.063e-8, ...
    5.788e-6, ...
    1.737e-5, ...
    2.423e-5, ...
    2.430e-5, ...
    2.431e-5, ...
    2.431e-5  ];

%% LINEARIZA��O DA FUN��O
xlin = 1./x.^3;
ylin = 1./y;

%% ---------------------- LETRA (A) ----------------------------- %%
%% CHAMADA DE FUN��O
[km,k] = minimos_quadrados(xlin,ylin,true);
Ymod=(km.*(x.^3))./(k+(x.^3));


%% PLOTANDO OS VALORES
plot(x,y,'markersize',5);
hold on; grid on;
plot(x,Ymod,'k');
xlabel('S (M)'); ylabel('V0 (M/s)');
title(['a0 = ' num2str(1/km) ';a1 = ' num2str(k*km)]);


%% CALCULO DE R2
sr=sum((y-Ymod).^2);
r2=1-sr/sum((y-mean(y)).^2);
fprintf('O valor de R^2 �: %d \n', r2);