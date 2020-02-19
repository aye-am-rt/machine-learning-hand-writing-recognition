function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
     prediction=X*theta;    %X is 97*2 and theta is 2*1 so prediction will be of 97*1 same as y.
     s=X'*(prediction-y);   %no need to do sum coz we have dome vectorization.
     delta=alpha*(s/m);     %theta is 2*1 so made s also 2*1 and then simultaneously update theta0 and theta1
     theta=theta-delta;     %like here. as our hypothysis is h(theta)=theta0+theta1*x
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
