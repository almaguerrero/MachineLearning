function [z] = atributo66 () 
load heart; 
no=[];
 for i=1:462
      if(heart(i,5)==0) & (heart(i,1)>=138)
        no=[no;heart(i,:)];
      end
 end
N=size(no);
P=N(1);
z=P; %%yes %%NELSON
end