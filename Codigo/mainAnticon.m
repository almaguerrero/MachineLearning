tic
clear all;
clc ;
load('data.mat')
%los atributos son
% Edad de la esposa (numérica)
% Educación de la esposa (categórica) 1 = baja, 2, 3, 4 = alta
% Educación del esposo (categórica) 1 = baja, 2, 3, 4 = alta
% Número de hijos nacidos (numérico)
% Religión de la esposa (binaria) 0 = No Islam, 1 = Islam
% ¿La esposa ahora está trabajando? (binario) 0 = Sí, 1 = No
% Ocupación del esposo (categórica) 1, 2, 3, 4
% Índice de nivel de vida (categórico) 1 = bajo, 2, 3, 4 = alto
% Exposición a los medios (binario) 0 = Bueno, 1 = No bueno
%%los clustert son 3
%Método anticonceptivo utilizado (atributo de clase) 1 = Sin uso, 2 = A largo plazo, 3 = A corto plazo
edad=data(:,1);
educ=data(:,2);
educEs=data(:,3);
hijos=data(:,4);
reli=data(:,5);
work=data(:,6);
wordE=data(:,7);
vida=data(:,8);
medios=data(:,9);
metodo=data(:,10);
edad1= (edad-min(edad))./(max(edad)-min(edad)) ;  
hijos1= (hijos-min(hijos))./(max(hijos)-min(hijos)) ; 
reli1= (reli-min(reli))./(max(reli)-min(reli)) ; 
work= (work-min(work))./(max(work)-min(work)) ; 
hijos1= (hijos-min(hijos))./(max(hijos)-min(hijos)) ; 
m=[edad1,hijos1];
size(m)
k=3;
% 
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

for i=1:3
   if i ==1
       primero=all(i,:)
   end
   if i==2
       segundo=all(i,:)
   end
   if i==3
       tercero=all(i,:)
   end
end

x1=primero(1);
y1=primero(2);
x2=segundo(1);
y2=segundo(2);
x3=tercero(1);
y3=tercero(2);
figure;           
plot(testdata(:,1),testdata(:,2),'r.','MarkerSize',7);
hold on
plot(x1,y1,'k*','MarkerSize',5)
hold on
plot(x2,y2,'k*','MarkerSize',5)
hold on
plot(x3,y3,'k*','MarkerSize',5)
title 'Anticonceptivos'; 
toc
