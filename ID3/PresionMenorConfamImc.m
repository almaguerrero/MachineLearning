clear all;
clc;
load('fImc1.mat')
w=size(fImc1)
w1=w(1)
var=atributo45(fImc1,w1) %%positivos
var1=atributonega(fImc1,w1) %%% negativos 
entL=entropia(var,var1,w1) %%%Entropia 
ganancias11=[];
numeros11=[];