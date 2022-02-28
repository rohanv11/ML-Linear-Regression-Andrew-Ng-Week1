function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% disp(X);
% disp(y);
% disp(theta);

J = X * theta ; % This gives all the predictions i.e. as if we subsititute all training examples into h(x) one by one with some values of theta

J = J - y; % take the difference from actual

J = J .^ 2; % square each difference

J = sum(J) /(2 * m);  % sum the squares and diviby by (2 * m)...as

% these above steps just Implement the Mean Squared Error Cost function




% =========================================================================

end
