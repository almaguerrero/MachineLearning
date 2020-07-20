function [z] = TercerNivelIzq ()
load heart; 
press=[];
for i=1:462
  if(heart(i,1)>=138) & (heart(i,3)>=26)
        press=[press;heart(i,:)];
  end
end
w=size(press)
w1=w(1)
yes=[];
no=[];
for i=1:w1
  if(press(i,5)==1)
        yes=[yes;press(i,:)];
  end
    if(press(i,5)==0)
        no=[no;press(i,:)];
  end
end

N=size(yes);
P=N(1);
N1=size(no);
P1=N1(1);
w=P+P1;
ent=entropia(P,P1,w)

ganancias=[];
numeros=[];
atributes=[2,4]
for i=1:2
x=atributos2(atributes(i)); %opcion1 extraigo los atributos 
y=atributos3(atributes(i)); %opcion2
ganacia(x,y,ent)
ganancias=[ganancias;ganacia(x,y,ent)] %saco la ganancia 
numeros=[numeros;i]
end

    z=1;
    
end