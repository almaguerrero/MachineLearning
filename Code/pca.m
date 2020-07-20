clear all;
clc;
load heart;
hearts=[];
nohearts=[];
for i=1:452
  if(heart(i,5)==1)
    hearts=[hearts;heart(i,:)];
  end
  if(heart(i,5)==0)
    nohearts=[nohearts;heart(i,:)];
  end
end
presion=[];
IMC=[];
for i=1:155
if(hearts(i,2)==1)
    presion=[presion;hearts(i,:)]
end

if(hearts(i,3)<20)
  IMC=[IMC;hearts(i,:)]
end
end
X=[94 61]
pie(X)

