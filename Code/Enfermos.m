clear all;
clc;
load heart; 
size(heart);
hearts=[];
nohearts=[];
%%%%%%%%%%%%%%%%%%%%%poblaicon genetal
% presi=heart(:,1);
% M1 = mean(presi);
% mas=heart(:,3);
% proM1=mean(mas);
% age=heart(:,4);
% proE=mean(age);
% 
% MaxPresi=max(presi);
% MaxIMC=max(mas);
% MaxEdad=max(age);
% 
% MinPresi=min(presi);
% MinIMC=min(mas);
% MinEdad=min(age);
% %%%%%%%%%%%55
for i=1:452
  if(heart(i,5)==1)
    hearts=[hearts;heart(i,:)];
  end
  if(heart(i,5)==0)
    nohearts=[nohearts;heart(i,:)];
  end
end
% %  X = [155 297]
% % pie(X)
% %%%%%%%%%%%%%enfermos
prision=hearts(:,1);
M = mean(prision);
masita=hearts(:,3);
proM=mean(masita);
edad=hearts(:,4);
proE=mean(edad);

MaxPresiE=max(prision);
MaxIMCE=max(masita);
MaxEdadE=max(edad);

MinPresiE=min(prision);
MinIMCE=min(masita);
MinEdadE=min(edad);

% %%%%%%%%%%no enfermos
% prisionNo=nohearts(:,1);
% MNo = mean(prisionNo);
% masitaNo=nohearts(:,3);
% proNo=mean(masitaNo);
% edadNo=nohearts(:,4);
% proNo=mean(edadNo);
% 
% MaxPresiNo=max(prisionNo);
% MaxIMCNo=max(masitaNo);
% MaxEdadNo=max(edadNo);
% 
% MinPresiNo=min(prisionNo);
% MinIMCNo=min(masitaNo);
% MinEdadNo=min(edadNo);

%%%%%%%%%%%%%%%%%%%%%%%%personas enfermas
masita=hearts(:,3);
edad=hearts(:,4);
prision=hearts(:,1);
% figure
% boxplot([edad],'notch','on',...
%         'labels',{'Personas Coronarias '})
fam=0;
for i=1:155
   if(hearts(i,2)==1)
     fam=fam+1;
   end
end
%%94 que si tienen familia enferma 
% X = [61 94]
% pie(X)
%%%%%%%%%%%%%%%%%%%%%%%%personas sanas
masita=nohearts(:,3);
edad=nohearts(:,4);
prision=nohearts(:,1);
%figure
% boxplot([prision],'notch','on',...
%         'labels',{'SBP '})
famNo=0;
for i=1:155
   if(nohearts(i,2)==1)
     famNo=famNo+1;
   end
end
% el 45 que si tienen
figure
X = [45 252]
pie(X)