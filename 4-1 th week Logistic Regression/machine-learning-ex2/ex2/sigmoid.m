function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
%##[i,j]=size(z);
%##for m=1:i,
%##  for n=1:j,
%##    g(m,n)=(1.0+exp(-z(m,n)))^(-1.0);
%##  endfor
%##endfor

g = 1.0 ./ (1.0 + exp(-z));

% =============================================================

end
