function [x,y] = NodoImcFamNo ()
clear all;
clc;
load('famNo.mat')
w=size(famNo)
w1=w(1)
imcMa=[];
imcMe=[];
for i=1:w1
   if(famNo(i,3)>=26)
      imcMa=[imcMa;famNo(i,:)]
   end
   if(famNo(i,3)<26)
   imcMe=[imcMe;famNo(i,:)]
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