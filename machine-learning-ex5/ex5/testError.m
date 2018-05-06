function error = testError(X, y, Xtest, ytest, lambda)
  
theta = trainLinearReg(X, y, lambda);
error = linearRegCostFunction(Xtest, ytest, theta, 0);