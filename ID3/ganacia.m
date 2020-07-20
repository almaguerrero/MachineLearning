function [G] = ganacia(x,y,EntropiaG)
x=x;
y=y;
EntropiaG=EntropiaG
ver=size(x)
ver1=ver(1)
tamaY=size(y)
tamaY1=ver(1)
nox=[];
yesx=[];
noy=[];
yesy=[];
 for i=1:ver %%%en X
     if(x(i,5)==1)
       yesx=[yesx;x(i,:)] 
     end
     if(x(i,5)==0)
       nox=[nox;x(i,:)];
     end
 end
 
 for i=1:tamaY1 %%%en y
     if(y(i,5)==1)
       yesy=[yesy;x(i,:)];
     end
     if(y(i,5)==0)
       noy=[noy;x(i,:)];
     end
 end
 v=size(nox);
 v1=v(1);
 v2=size(yesx);
 v3=v2(1);
 totalx=v1+v3;
 
 vv=size(noy);
 vv1=vv(1);
 vv2=size(yesy);
 vv3=v2(1);
 totaly=vv1+vv3;
 
 %%tabla%%
 %%table x --->  nox  yesx  --> totalx
 %%table y --->  noy  yesy  --> totaly
 
 %formula para la ganancia
 %%gain(Entropia,atributo)=Entropia(s)-sumatoria(|sv/s|*Entropia(Sv))
 %%[10+ 0-] --> E=0
 %%[0+  10+] -->E=0
 %%[5+ 5-]  ->->E=1
 
%entropía de X 
entx=entropia(v1,v3,totalx)
%entropia de Y
enty=entropia(vv1,vv3,totaly)
%EntropiaG
gain=EntropiaG*(((totalx/462)*(entx))*((totaly/462)*(enty)))
 
 
G=gain
end