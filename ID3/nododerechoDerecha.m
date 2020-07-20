clear all;
clc;
load('NodoDerechoDerecha.mat')
w=size(xx1)
w1=w(1)
var=atributo45(xx1,w1) %%positivos
var1=atributonega(xx1,w1) %%% negativos 
entL=entropia(var,var1,w1) %%%Entropia 
