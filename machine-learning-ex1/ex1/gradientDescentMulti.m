function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % eqnA and eqnB can be combined into one statement
    eqnB = (X * theta) - y;
    
    % eqnC and eqnD can be combined into one statement
    eqnD = alpha * (1/m) * (eqnB' * X)';
    
    % update theta
    theta = theta - eqnD;
    J_history(iter) = computeCostMulti(X, y, theta);
end

disp(J_history);

end