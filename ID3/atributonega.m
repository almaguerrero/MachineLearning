function [z] = atributonega (x,y) 
x=x;
y=y;
no=[];

 for i=1:y
      if(x(i,5)==0) 
        no=[no;x(i,:)];
      end
 end
N=size(no);
P=N(1);
z=P; %%yes %%NELSON
end