% TREVOR ROSS, ANDREW BUELTER
% FINAL PROJECT
% CS 5402 - Machine Learning

clear; clc;
load('adult_data.mat')

% TRAINING DATA
X = Xtrain;
Y = Ytrain;
N = size(X, 2); % number of samples
D = size(X, 1) - 1; % feature dimensions
T = 1; % maximum iterations
w = zeros(D+1,1); % w is a 3* 1 vector, initialized as 0

% Pocket PLA initialization
pocket_w = w;
pocket_err = 0;
for nE = 1:N
    pocket_err = pocket_err + (sign(w' * X(:,nE)) ~= Y(nE));
end

for t = 1:T 
    error = 0;
    for n=1:N
        %find a misktake of w and correct it
        if (Y(n) * X(:,n)' * w <= 0)  
           w = w + Y(n) * X(:,n);
           error = error + 1;
           curr_err = 0;
           for nE = 1:N
               curr_err = curr_err + (sign(w' * X(:,nE)) ~= Y(nE));
           end
           
           % update pocket PLA if nessissary
           if (curr_err < pocket_err)
               pocket_w = w;
               pocket_err = curr_err;
           end
        end             
    end       
    
    %if there are no more mistakes
    if error ==0
        break;
    end
end

disp(['PLA training error rate: ', num2str(error/N)])
disp(['Pocket PLA training error rate: ', num2str(pocket_err/N)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TEST DATA
% TRAINING DATA
X = Xtest;
Y = Ytest;
N = size(X, 2); % number of samples
D = size(X, 1) - 1; % feature dimensions
T = 1; % maximum iterations

% PLA
w = w;
for t = 1:T 
    error = 0;
    for n=1:N
        %find a misktake of w
        if (Y(n) * X(:,n)' * w <= 0)  
           error = error + 1;
        end             
    end       
    %if there are no more mistakes
    if error ==0
        break;
    end
end
disp(['PLA test error rate: ', num2str(error/N)])

% Pocket PLA
w = pocket_w;
for t = 1:T 
    error = 0;
    for n=1:N
        %find a misktake of w
        if (Y(n) * X(:,n)' * w <= 0)  
           error = error + 1;
        end             
    end       
    %if there are no more mistakes
    if error ==0
        break;
    end
end
disp(['PocketPLA test error rate: ', num2str(error/N)])