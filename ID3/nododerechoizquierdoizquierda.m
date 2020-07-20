load('IMCDerechaMenor.mat')
w=size(imc1)
w1=w(1)
var=atributo45(imc1,w1) %%positivos
var1=atributonega(imc1,w1) %%% negativos 
entL=entropia(var,var1,w1) %%%Entropia 
ganancias11=[];
numeros11=[];
x=atributos2(4); %positivos con respecto a si tienen o no una enfermedad coronaraia
y=atributos3(4); % negativos
ganacia(x,y,entL)
