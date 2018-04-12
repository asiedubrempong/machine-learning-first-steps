function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure(1); hold on;
% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% =========================================================================

# use logical indexing to find the indexes of the the positive and negative sets
positiveIndexes = (y(:, 1)) == 1; % or: find(y==1);
negativeIndexes = (y(:, 1)) == 0; % or: find(y==0);

# plot the values
plot(X(positiveIndexes,1), X(positiveIndexes,2), 'k+', 'LineWidth', 2,'MarkerSize', 10);
plot(X(negativeIndexes,1), X(negativeIndexes,2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 10);

xlabel('Exam 1 score');
ylabel('Exam 2 score');

hold off;

end
