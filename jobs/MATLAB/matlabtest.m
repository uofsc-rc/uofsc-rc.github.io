
% sets the size of the matrix to 4 x 4
n = 4;
% randomly populates the matrix with values
A = rand(n);
% print the result
A
% takes the inverse of the matrix
V = inv(A);
% print the result
V

% multiply by the original matrix to get the identity matrix
I = V*A