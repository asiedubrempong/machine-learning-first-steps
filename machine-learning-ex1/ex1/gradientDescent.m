function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    % calculate the hypothesis values of all the training examples
    predictions = X * theta;
    % calculate (prediction - actualvalue) * 
    summation = (predictions - y)' * X;
    theta = theta - ((alpha * (1/m)) * summation');

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

disp(J_history);

% alternative to rather plot the descent of the cost
% iter = [1:num_iters]';
% plot(iter, J_history', 'MarkerSize', 10);


end
