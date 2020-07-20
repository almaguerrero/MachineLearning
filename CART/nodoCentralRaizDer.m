load('famNo.mat')
% %sbp ->1
% %obesity -> 3
% %age ->4
w=size(famNo)
w1=w(1)
yes=[];
no=[];
ganancias=[];
numeros=[];
atributes=[1 3 4]
GP11(1)
for i=1:3
    ganancias=[ganancias;GP11(atributes(i))]
    numeros=[numeros;atributes(i)]
end
T = table(ganancias,numeros);
w=sortrows(T)
nodoPrin=w.numeros(1)