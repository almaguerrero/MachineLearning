clear all;
clc;
%Este es el principal del  CART
%%aqui saca el primer componente que va en el inicio del árbol
% los atributos se identifican por numeros como se muestra:
% %sbp ->1
% %famhist ->2
% %obesity -> 3
% %age ->4
ganancias=[];
numeros=[];
%%en este ciclo calculamos el indice gini para elegir el mayor
%%y ver cual va a quedar como nodo preincipal
for i=1:4
  sbp=GP(i); %%el indice i representa el atributo el numero
  ganancias=[ganancias;GP(i)] %%guarda las ganancias, la funcio GP es la que saca las ganancias
  %%trabaja como gini index
  numeros=[numeros;i];%%nuemro de atributo
end
T = table(ganancias,numeros);
w=sortrows(T)
nodoPrin=w.numeros(1) %%%ordeno y saco el nodo inferior
%despues lo mando a la  funcion que en base a este nodo
%pincipal saca los siguientes nodo que deben de ir 
%%estas dos funciones traen los siguietnes nodos en el segundo nivel del
%%arbol
NodoCentralraices(); % de esta funcuion salen los siguietnes dos nodos ambos IMC

%%Arbol del lado izquierdo
NodoCentralraices();  % Segundo Nivel del arbol
 NodoImcFamYes(); % %%%tercer nivel del arbol 
% %%Arbol del lado derecho
NodoImcFamNo(); %%sgundo nivel del arbol
pruebasImcIzq(); %tercer nivel
