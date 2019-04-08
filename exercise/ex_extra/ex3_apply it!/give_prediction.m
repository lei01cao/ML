%% Initialization
clear ; close all; clc

%% Setup the parameters you will use for this part of the exercise
input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10
                          % (note that we have mapped "0" to label 10)

%% =========== Loading and Visualizing Data =============
%
%

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')

load('.\handwritting_numbers.mat'); % training data stored in arrays X, y
load('.\trained_para400.mat'); % final training parameters matrix, 96.46% accuracy
m = size(X, 1);

% Randomly select 100 data points to display
rand_indices = randperm(m);
sel = X(rand_indices(1:100), :);

displayData(sel);


%% =========== Predicting Numbers =============
%
%

out_random = predictOneVsAll(all_theta, sel); final_predict_random = out_random;
final_predict_random(out_random == 10) = 0;   % replace 10 with original 0
final_predict_random = reshape(final_predict_random,10,10)';

% print recognition result
fprintf('\n10x10 Recognition Result: \n\n');
disp(final_predict_random);
% print recognition accuracy
fprintf('10x10 Recognition Accuracy: %.2f%%\n', mean(double(out_random == y(rand_indices(1:100)))) * 100);