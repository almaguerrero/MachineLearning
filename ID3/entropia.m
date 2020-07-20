%%% Entropia
%-(Alog2A)-(B*log2B)-....-(Zlog2Z)
function [z] = entropia (x,y,w)
A=x/w;
B=y/w;
A1=log2(A);
B1=log2(B);
mult1=A*(A1);
mult2=B*(B1);
    z=-(mult1)-(mult2);
end

