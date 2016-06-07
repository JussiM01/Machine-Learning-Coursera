function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    
    z = 1/m * [(X * theta - y), (X * theta - y)].*X;
    
    delta = [sum(z(:,1)); sum(z(:,2))];

    theta = theta - alpha * delta;
    
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
