function [izq,dere] = NodoCentralRaices ()
load heart; 
famYes=[];%que si tienen
famNo=[];%los que no tienen
% %sbp ->1
% %famhist ->2
% %obesity -> 3
% %age ->4
for i=1:462
    if(heart(i,2))== 1
       famYes=[famYes;heart(i,:)]
    end
    if(heart(i,2))== 0
       famNo=[famNo;heart(i,:)]
    end
end

%%%famYes
%%calculo la ganancia con la primera opcion del nodo principal
presion=presionNodeIzq();
imc=imcNodeIzq();
edad=pruebas;
gananciasYes=[presion;imc;edad]
 derecho=3
%%pasa IMC
%%%

%%%fam—o
%%calculo la ganancia con la segunda opcion del nodo principal
presion1=presionNodeIzq1();
imc1=imcNodeIzq1();
edad1=pruebas1();
gananciasNo=[presion1;imc1;edad1]
izq=3;
end

