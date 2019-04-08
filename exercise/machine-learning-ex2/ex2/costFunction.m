function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% hx = sigmoid(X*theta);
% hx_y = hx - y;
% 
% J = 1/m * sum( -y.*log(hx) - (1-y).*log(1-hx) );
% 
% %for j = 1: size(theta)
% %	grad(j) = 1/m * sum(hx_y .* X(:, j));
% 
% grad = 1/m * X'*hx_y;

% 12-03 Me:
    h_x = sigmoid(X*theta);
    
    J = -1/m * sum(y.*log(h_x) + (1-y).*log(1-h_x));    % or J = -1/m * (y'*log(h_x) + (1-y)'*log(1-h_x));
    grad = -1/m * sum(repmat((y-h_x),1,size(theta)) .* X)';    % or grad = -1/m * X' * (y-h_x);
% =============================================================

end
