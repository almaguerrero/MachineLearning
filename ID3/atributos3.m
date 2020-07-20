function [no] = atributos3(x)
load heart; 
n = x;
no=[];
switch n
    case 1
    disp('presion')
    for i=1:462
     if(heart(i,1)<138)
        no=[no;heart(i,:)];
     end
    end
    case 2
    disp('fam')
    for i=1:462
      if(heart(i,2)==0)
        no=[no;heart(i,:)];
      end
    end
    case 3
    disp('IMC')
     for i=1:462
     if(heart(i,3)<26)
        no=[no;heart(i,:)];
     end
    end
    case 4
    disp('Edad')
     for i=1:462
     if(heart(i,3)<43)
        no=[no;heart(i,:)];
     end
    end
    otherwise
    disp('ÑO')
end
end