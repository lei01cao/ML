function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% hx = X * theta;
% J = 1/(2*m) * sum((hx-y).^2) + lambda/(2*m) * sum(theta(2:end).^2);
% grad = 1/m * X' * (hx-y);
% regGrad = lambda/m * theta;
% regGrad(1) = 0;
% grad = grad + regGrad;


% 12-07 Me:
    h_x = X * theta;
    theta_c = [0; theta(2:end)];
    J = 1/(2*m) * (h_x-y)'*(h_x-y) + lambda/(2*m) * theta_c'*theta_c;
    
    grad = 1/m * X'*(h_x-y) + lambda/m * theta_c;

% =========================================================================

grad = grad(:);

end
