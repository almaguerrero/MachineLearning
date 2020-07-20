function [yes] = atributos2(x)
load heart; 
n = x;
yes=[];
switch n
    case 1
    disp('presion')
    for i=1:462
      if(heart(i,1)>=138)
        yes=[yes;heart(i,:)];
      end
    end
    case 2
    disp('fam')
    for i=1:462
      if(heart(i,2)==1)
        yes=[yes;heart(i,:)];
      end
    end
    case 3
    disp('IMC')
    for i=1:462
      if(heart(i,3)>=26)
        yes=[yes;heart(i,:)];
      end
    end
    case 4
    disp('Edad')
    for i=1:462
      if(heart(i,4)>=43)
        yes=[yes;heart(i,:)];
      end
    end
    otherwise
    disp('ÑO')
end
end