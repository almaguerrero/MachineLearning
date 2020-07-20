function [x,y] = NodoImcFamYes ()
clear all;
clc;
load('famYes.mat')
w=size(famYes)
w1=w(1)
imcMa=[];
imcMe=[];
for i=1:w1
   if(famYes(i,3)>=26)
      imcMa=[imcMa;famYes(i,:)]
   end
   if(famYes(i,3)<26)
   imcMe=[imcMe;famYes(i,:)]
   end
end


%%%famYesandIMC High
presion=presionImcIzq;
edad=pruebasImcIzq;
ganancias=[presion;edad]
x=ganancias(1);

%%%famÑoandIMC High low
presion=presionImcIzq;
edad=pruebasImcIzq;
ganancias=[presion;edad]
y=ganancias(1);

end