clear;
clc;
load('Heart.mat')
 %%Atributos 
p=Heart(:,1);
fam=Heart(:,2);
imc=Heart(:,3);
edad=Heart(:,4);
imcN= zscore(imc)  % normalizing the data p
edadN=zscore(edad) ;  % normalizing the data p

m=[imcN,edadN];
size(m)
 k=2;
% % 
% centroides= kMeansCluster(m,k);
A=m;
A = double(A);
nrows = size(A, 1);
randrows = randperm(nrows);

meanaccuracy = zeros(4, 5);
X = A;
all=[];
e = zeros(4, 1);
k=2
for i=1:2
for fold = 1:5
        for chunk = 1 : fold
            chunksize = floor(nrows/fold);
            x = (chunk - 1) * chunksize + 1;
            y = chunk * chunksize;
            testdata = X(randrows(x:y), :);
            if chunk == 1
                traindata = X(randrows(y + 1:end), :);
            elseif chunk == fold
                traindata = X(randrows(1 : x-1), :);
            else
                traindata = X(randrows(1, x-1:y+1, end), :);
            end
              m=traindata
%             currentacc = knnclassifier(traindata, testdata, K);
              centroides= kMeansCluster(m,k);
             % centroides= kMeansCluster(m,k);
              
        end

%         meanaccuracy(fold - 1, K) = mean(s);
%          out(fold - 1) = mean(s);
%          e(fold - 1) = std(s);
end
  all=[all;centroides];
end
[m,n]=size(all);
centroides=[];
%%%

for i=1:2
   if i ==1
       primero=all(i,:)
   else
       segundo=all(i,:)
   end
end

x1=primero(1);
y1=primero(2);
x2=segundo(1);
y2=segundo(2);
figure;           
plot(testdata(:,1),testdata(:,2),'r.','MarkerSize',7);
hold on
plot(x1,y1,'k*','MarkerSize',5)
hold on
plot(x2,y2,'k*','MarkerSize',5)
title 'HearDisease'; 
