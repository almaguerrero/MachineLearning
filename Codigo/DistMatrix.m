function d=DistMatrix(A,B)
disp(A)
disp(B)
[hA,wA]=size(A);
[hB,wB]=size(B);

if hA ==1 & hB==1
    d=sqrt(dot((A-B),(A-B)));
else
    C=[ones(1,hB);zeros(1,hB)];
    D=flipud(C);
    E=[ones(1,hA);zeros(1,hA)];
    F=flipud(E);
    G=A*C;
    H=A*D;
    I=B*E;
    J=B*F;
    d=sqrt((G-I').^2+(H-J').^2);
end
end
