function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

s = size(z);
row_num = s(1);
col_num = s(2);

for n = 1:row_num
    for k = 1:col_num
        g(n, k) = 1/(1 + exp(- z(n, k) ) );
    end
end



% =============================================================

end
