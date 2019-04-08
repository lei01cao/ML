function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% pos = find(y); neg = find(y==0);
% 
% plot(X(pos, 1), X(pos, 2), 'b+', 'LineWidth', 2, 'MarkerSize', 7);
% plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'r', 'MarkerSize', 7);

% 12-03 Me:
Plus = find(y==1); O = find(y~=1);
plot(X(Plus,1), X(Plus,2), 'k+');
plot(X(O,1), X(O,2), 'ko');
% =========================================================================



hold off;

end
