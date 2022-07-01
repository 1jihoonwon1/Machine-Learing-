function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
a = theta
b =y
h =sigmoid(X*theta)
c =(h-y)
J =(1/m) * (-y' *log(h) - (1-y)' *log(1-h));
J = J + (lambda * 1/(2*m) * (theta(2:end)' * theta(2:end)))


cost = h - y;
grad = zeros(size(theta));
theta(1) = 0
grad =(1/m)*(X' * cost);
grad = grad + (lambda/m) * theta


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
