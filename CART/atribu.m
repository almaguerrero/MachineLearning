function [yes] = atribu(x)
load('famNo.mat')
w=size(famNo)
w1=w(1)
n = x;
yes=[];
switch n
    case 1
    disp('presion')
    for i=1:w1
      if(famNo(i,1)>=138)
        yes=[yes;famNo(i,:)];
      end
    end
    case 2
    disp('IMC')
    for i=1:w1
      if(famNo(i,3)>=26)
        yes=[yes;famNo(i,:)];
      end
    end
    case 3
    disp('Edad')
    for i=1:w1
      if(famNo(i,4)>=43)
        yes=[yes;famNo(i,:)];
      end
    end
    otherwise
    disp('ÑO')
end
end