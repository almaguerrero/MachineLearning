function [z] = pruebasImcIzq ()
load('FamYImcMa.mat')
w=size(imcMa)
w1=w(1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
yes=[];
for i=1:w1
    if(imcMa(i,4)>=43)
     yes=[yes;imcMa(i,:)];
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
no=[]
for i=1:w1
    if(imcMa(i,4)<43)
     no=[no;imcMa(i,:)];
    end
end
w=size(yes);
w1=w(1);
yesN=0;
noN=0;
for i=1:w1
   if(yes(i,5)==1)
   yesN=yesN+1;
   end
   if(yes(i,5)==0)
   noN=noN+1;
   end
end
t=size(no)
t1=t(1)
yest=0;
not=0;
for i=1:t
   if(no(i,5)==1)
   yest=yest+1;
   end
   if(no(i,5)==0)
   not=not+1;
   end
end
total=yesN+noN
totalt=yest+not
genera=total+totalt
%%opcion yes ño  total
%%mayor  yes no   yes+no
%%menor yest not  yest+not  ->
                   %%suma
GOpcion1=1-((yesN/total).^2)-((noN/total).^2);
GOpcion2=1-((yest/totalt).^2)-((not/totalt).^2);
GGeneral=((total/genera)*GOpcion1)+((totalt/genera)*GOpcion2)
GGeneral;
z=GGeneral;

end