clear all;
clc;
load heart; 
size(heart);
hearts=[];
nohearts=[];
%%%%%%%%%%%%%%%%%%%%%%%%%5
for i=1:452
  if(heart(i,5)==1)
    hearts=[hearts;heart(i,:)];
  end
  if(heart(i,5)==0)
    nohearts=[nohearts;heart(i,:)];
  end
end
prision=hearts(:,1);
masita=hearts(:,3);
edad=hearts(:,4);
nosanos=[prision,masita,edad]

prisionNo=nohearts(:,1);
masitaNo=nohearts(:,3);
edadNo=nohearts(:,4);
nosanos=[prision,masita,edad]

plotmatrix(nosanos)


