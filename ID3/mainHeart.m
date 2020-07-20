clear all;
clc;
arbol=[]
atributes=[1 2 3 4];
load heart; 
hearts=[];
nohearts=[];
for i=1:462
  if(heart(i,5)==1)
    hearts=[hearts;heart(i,:)];
  end
  if(heart(i,5)==0)
    nohearts=[nohearts;heart(i,:)];
  end
end
N=size(hearts);
P=N(1);
N1=size(nohearts);
P1=N1(1);
w=P+P1;
ent=entropia(P,P1,w)
%%%ganancia de los datos
%sbp ->1
%famhist ->2
%obesity -> 3
%age ->4
ganancias=[];
numeros=[];
for i=1:4
x=atributos2(i); %opcion1 extraigo los atributos 
y=atributos3(i); %opcion2
ganacia(x,y,ent)
ganancias=[ganancias;ganacia(x,y,ent)] %saco la ganancia 
numeros=[numeros;i]
end
general=table(ganancias,numeros);
%%sscar el primero que la presion 
win=general.ganancias(1); %%primer nodo primer nivel presion
%%%nodos segundo nivel
segundoNivelIzq();
segundoNivelDer();
%%nodos tercer nivel
TercerNivelIzq();
TercerNivelDer();



