function [z] = atributo45 (x,y) 
x=x;
y=y;
yes=[];
 for i=1:y
      if(x(i,5)==1) 
        yes=[yes;x(i,:)];
      end
 end
N=size(yes);
P=N(1);
z=P; %%yes 
end