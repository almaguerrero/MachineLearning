clear all;
clc;
load heart; 
size(heart);
hearts=[];
nohearts=[];
for i=1:462
  if(heart(i,1)>=138)
    hearts=[hearts;heart(i,:)];
  end
  if(heart(i,1)<138)
    nohearts=[nohearts;heart(i,:)];
  end
end



