clear all;
clc;
load heart; 
size(heart);
%%%%%%%%%%%%%%%%%%%%%
prision=heart(:,1);
M = mean(prision);
masita=heart(:,3);
edad=heart(:,4);
figure
boxplot([edad],'notch','on',...
        'labels',{'Edad '})
% 
% boxplot([masita],'notch','on',...
%         'labels',{'IMC '})
% 
% boxplot([prision],'notch','on',...
%         'labels',{'Presion '})

