function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

hypothesis = sigmoid(X*theta);

% equation B 
B = y .* log(hypothesis);

% equation C
C = (1 - y) .* log(1 - hypothesis);
% original term without regularization
original = -1/m * sum(B + C);
% regularization term
reg = lambda / (2*m) * sum([0;theta([2:length(theta)])].^2);

J = original + reg;

% calculating grad
sumOfErrors = X' * (hypothesis - y);

grad = (1/m * sumOfErrors) + ((lambda/m)*[0;theta([2:length(theta)])]);

% =============================================================

end
