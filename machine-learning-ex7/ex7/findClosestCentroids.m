function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%

% loop over all the training examples
for i=1:size(X,1)
  distances = zeros(size(centroids,1), 1);
  
  % for each training example loop over the centroids
  for j=1:size(centroids,1)
    % find the length from the training example to the centroid
    length = sum((X(i,:) - centroids(j, :)).^2);
    distances(j) = length;
  end;
  
  [value, index] = min(distances);
  idx(i) = index;
end;



% =============================================================

end

