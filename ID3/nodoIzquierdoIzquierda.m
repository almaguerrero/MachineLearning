clear all;
clc;
load('familiaNegaPresionMenro.mat')
w=size(fy1)
w1=w(1)
var=atributo45(fy1,w1) %%positivos
var1=atributonega(fy1,w1) %%% negativos 
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

Imc=[];
Imc1=[];
% 
for i=1:w1
if(fy1(i,3)>=26)
  Imc=[Imc;fy1(i,:)];
end

if(fy1(i,3)<26)
  Imc1=[Imc1;fy1(i,:)];
end
end