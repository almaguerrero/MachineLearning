function y=kMeansCluster(m,k,isRand)
%%%%
%%clasificar los objetos en una matriz de datos basada en los atributos
%%minimizar por la distancia euclideana entre centroides y los puntos que son los objetos
%%Salida: los datos de la matriz más una columna adicional representan el grupo de cada objeto
if nargin <3, isRand=0; end
if nargin<2,  k =1; end
puntos=[];
[maxRow,maxCol]=size(m);
centroi=[];
if maxRow<=k;
    y=[m, 1:maxRow];
else
     %%valores iniciales del centroide
   if isRand
       p = randperm(size(m,1)); %%random
       for i=1:k
            c(i,:)=m(p(i),:);
       end
    else
        for i=1:k
            c(i,:)= m(i,:)  ; 
         end
    end
    
       temp=zeros(maxRow,1); 


    while 4
        d=DistMatrix(m,c); %calculo la distancias de los objetos y los centroides
        [z,g]= min(d,[],2);
        cen=c(:,:)
        if g==temp;
          break;
        else 
          temp=g;
        end

       for i=1:k;
           f=find(g==i);
            if f
               c(i,:)=mean(m(find(g==i),:),1);
            end
       end
     end
y=cen;
%   %Error percentage calculation
% error = transpose(expclass) - testdata(:,3);
% accur = ((size(error, 1) - nnz(error))/size(error, 1));

end