function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
predictions = X * theta; % hypothesis predictions for each training example
sqrErrors = (predictions - y).^2; % sum of square error for each training example

% You need to return the following variables correctly 

J = 1/(2*m) * sum(sqrErrors);

end
