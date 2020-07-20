clear
clc
load('data.mat');
edad=data(:,1);
educEsposa=data(:,2);
educEsposo=data(:,3);
hijos=data(:,4);
re=data(:,5);
esposaWor=data(:,6);
espoWor=data(:,7);
vida=data(:,8);
medios=data(:,9);  %%->


edadN=zscore(edad);
hijosN=zscore(hijos);
A=[edadN hijosN];
A = double(A);
nrows = size(A, 1);
randrows = randperm(nrows);

meanaccuracy = zeros(4, 5);
X = A;
e = zeros(4, 1);
k=3
%for i=1:3
for fold = 1:5
        for chunk = 1 : fold
            chunksize = floor(nrows/fold);
            x = (chunk - 1) * chunksize + 1;
            y = chunk * chunksize;
            testdata = X(randrows(x:y), :);
            if chunk == 1
                traindata = X(randrows(y + 1:end), :);
            elseif chunk == fold
                traindata = X(randrows(1 : x-1), :);
            else
                traindata = X(randrows(1, x-1:y+1, end), :);
            end
%             currentacc = knnclassifier(traindata, testdata, K);
              %centroides= kMeansCluster(traindata,testdata,k);
             % centroides= kMeansCluster(m,k);
%             s(chunk) = currentacc
 %end
%         meanaccuracy(fold - 1, K) = mean(s);
%          out(fold - 1) = mean(s);
%          e(fold - 1) = std(s);
end

end
%      plot(K);
%     errorbar(k, out, e); 
%      title(['Métodos Anticonceptivos con ', num2str(K), ' vecinos'])

% disp('promedio performance')
% disp(mean(out))