function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
% Cvec = [0.01 0.03 0.1 0.3 1 3 10 30];
% sigmavec = [0.01 0.03 0.1 0.3 1 3 10 30];
% minError = 1; %initialize error
% 
% for i = 1:8
% 	for j = 1:8
% 		model = svmTrain(X, y, Cvec(i), @(x1, x2) gaussianKernel(x1, x2, sigmavec(j)));
% 		valPred = svmPredict(model, Xval);
% 		predError = mean(double(valPred ~= yval));
% 		if predError <= minError
% 			C = Cvec(i);
% 			sigma = sigmavec(j);
% 			minError = predError;
% 		endif;
% 	endfor;
% endfor;
% % opt C = 1 sigma = 0.1 minError = 0.03


% 12-10 Me:
    Test_Value = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];  % potential CV values of C & sigma
    m = size(Test_Value, 2);
    Model_Error = zeros(m,m);                           % All models' predict error
    for i = 1:m
        for j = 1:m
            model = svmTrain(X, y, Test_Value(i), @(x1, x2) gaussianKernel(x1, x2, Test_Value(j)));
            predictions = svmPredict(model, Xval);      % use trained parameters to test validation data
            Model_Error(i,j) = mean(double(predictions ~= yval));   % i��C's tag  j��sigma's tag
        end
    end
    [minPE,tag] = min(Model_Error(:));
    C = Test_Value(1, mod(tag, m));
    sigma = Test_Value(1, ceil(tag/m));
    
% =========================================================================

end
