function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
num_labels
% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
x=X
o = ones(size(X, 1), 3);
o(:,2:3) =o(:,2:3) .* X
a = Theta1
b = Theta2
c = Theta1 * o'
d = sigmoid(c)
e = d'
aa =[size(e),size(Theta2)]
f = ones(size(e, 1), 5);
f(:,2:5) =f(:,2:5) .* e
aa =[size(f),size(Theta2)]
g = sigmoid((Theta2 * f')')
for i =1:m
    q(i,1) = max(g(i,:));
end

z = g == q
for i = 1:num_labels
    p = p + z(:,i) * i;
end



% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%








% =========================================================================


end
