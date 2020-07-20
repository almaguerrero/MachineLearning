function [z] = GP (x)
x=x;
sbp=atributos2(x);
sbp1=atributos3(x); %%menor a 136
w=size(sbp);
w1=w(1);
yes=0;
no=0;
for i=1:w1
  if sbp(i,5)==1
  yes=yes+1;
  end
  
  if sbp(i,5)==0
  no=no+1;
  end
end
total=yes+no;
w1=size(sbp1);
w11=w(1);
yes1=0;
no1=0;
for i=1:w11
  if sbp1(i,5)==1
  yes1=yes1+1;
  end
  
  if sbp1(i,5)==0
  no1=no1+1;
  end
end
total1=yes1+no1;
intans=yes+no;
intans1=yes1+no1;
%%%opcion yes ño  total
%%%mayor  yes no   yes+no
%%%menor yes1 no1  yes1+no1
                   %%suma
                  
GOpcion1=1-((yes/total)^2)-((no/total)^2);
GOpcion2=1-((yes1/total1)^2)-((no1/total1)^2);
GGeneral=((intans/total1)*GOpcion1)+((intans1/total1)*GOpcion2)
z=GGeneral; %efectúa la suma
end