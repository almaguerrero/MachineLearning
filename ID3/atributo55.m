function [z] = atributo55 () 
load heart; 
yes=[];
 for i=1:452
      if(heart(i,2)==1) & (heart(i,1)>=138)
        yes=[yes;heart(i,:)];
      end
 end
N=size(yes);
P=N(1);
z=P; %%yes 
end