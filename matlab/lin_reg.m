% TREVOR ROSS, ANDREW BUELTER
% FINAL PROJECT
% CS 5402 - Machine Learning

clear; clc;
load('adult_data.mat')

% Train on training dataset
X = Xtrain';
Y = Ytrain';
N = size(X, 1); % number of samples
D = size(X, 2) - 1; % feature dimensions
% find w
w = inv(X' * X) * X' * Y;

% find errors
errors = 0;
for n = 1:N
    % size(w')
    y_pred = sign(w' * X(n,:)');
    if (Y(n) ~= y_pred)
        errors = errors + 1;
    end
end
error_rate = errors / N;

% print error
disp(['TRAINING ERROR: ', num2str(error_rate)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% find error on test dataset
X = Xtest';
Y = Ytest';
N = size(X, 1); % number of samples
D = size(X, 2) - 1; % feature dimensions

% find errors
errors = 0;
for n = 1:N
    % size(w')
    y_pred = sign(w' * X(n,:)');
    if (Y(n) ~= y_pred)
        errors = errors + 1;
    end
end
error_rate = errors / N;

% print error
disp(['TEST ERROR: ', num2str(error_rate)])
