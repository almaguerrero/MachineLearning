clear all;
clc;
load('nododerechoIzquierda.mat')
w=size(yx1)
w1=w(1)
var=atributo45(yx1,w1) %%positivos
var1=atributonega(yx1,w1) %%% negativos 
entL=entropia(var,var1,w1) %%%Entropia 
ganancias11=[];
numeros11=[];

for i=3:4
x=atributos2(i); %positivos con respecto a si tienen o no una enfermedad coronaraia
y=atributos3(i); % negativos
ganacia(x,y,entL)
ganancias11=[ganancias11;ganacia(x,y,entL)];
numeros11=[numeros11;i];
end
general1=table(ganancias11,numeros11)
T1=sortrows(general1)  %%%sigueinte Node
win=T1.numeros11(1);
imc=atributos2(win); %Mayor al promedio
imc1=atributos3(win);%Menor al promedio
