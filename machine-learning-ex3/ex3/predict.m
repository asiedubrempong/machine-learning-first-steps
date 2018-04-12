function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% add bias unit
X = [ones(m, 1) X];

% z of layer 2
z2 = Theta1 * X';
% activation of second layer
a2 = sigmoid(z2);

% add bias unit
a2 = [ones(1, m); a2];

% z of layer 3
z3 = Theta2 * a2;
% activation of layer three
a3 = sigmoid(z3);

% for each column find the index of the label with the maximum probability
[probability indexes] = max(a3);

p = indexes';

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.

% =========================================================================

end
