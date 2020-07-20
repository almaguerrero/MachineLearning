load('menorPresion.mat')
w=size(y1)
w1=w(1)
var=atributo45(y1,w1) %%positivos
var1=atributonega(y1,w1) %%% negativos 
entL=entropia(var,var1,w1) %%%Entropia 
ganancias11=[];
numeros11=[];

for i=2:4
x=atributos2(i); %positivos con respecto a si tienen o no una enfermedad coronaraia
y=atributos3(i); % negativos
ganacia(x,y,entL)
ganancias11=[ganancias11;ganacia(x,y,entL)];
numeros11=[numeros11;i];
end
general1=table(ganancias11,numeros11)
T1=sortrows(general1)  %%%sigueinte Node
win=T1.numeros11(1)
fx1=[];
fy1=[];

for i=1:w1
if(y1(i,2)==1)
  fx1=[fx1;y1(i,:)];
end

if(y1(i,2)==0)
  fy1=[fy1;y1(i,:)];
end
end