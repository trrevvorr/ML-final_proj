% TREVOR ROSS, ANDREW BUELTER
% FINAL PROJECT
% CS 5402 - Machine Learning

clear; clc;
load('adult_data.mat')

% TRAINING DATA
X = Xtrain';
Y = Ytrain';
N = size(X, 1); % number of samples
D = size(X, 2) - 1; % feature dimensions
T = 100; % number of iterations
a = 10; % step size
w = zeros(1, D+1);

% find w
for t = 1:T
    sum = 0;
    for n = 1:N
        s = -Y(n) * w * X(n,:)';
        ts = 1 / (1 + exp(-s));
        sum = sum + ts * Y(n) * X(n,:);
    end
    w = w + a * (1 / N) * sum;
end

% find errors
errors = 0;
for n = 1:N
    % size(w')
    y_pred = sign(w * X(n,:)');
    if (Y(n) ~= y_pred)
        errors = errors + 1;
    end
end
error_rate = errors / N;
% print error
disp(['TRAINING ERROR: ', num2str(error_rate)])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TESTING DATA
X = Xtest';
Y = Ytest';
N = size(X, 1); % number of samples
D = size(X, 2) - 1; % feature dimensions
T = 100; % number of iterations
a = 10; % step size

% find errors
errors = 0;
for n = 1:N
    % size(w')
    y_pred = sign(w * X(n,:)');
    if (Y(n) ~= y_pred)
        errors = errors + 1;
    end
end
error_rate = errors / N;
% print error
disp(['TEST ERROR: ', num2str(error_rate)])