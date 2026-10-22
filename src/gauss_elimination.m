function x = gauss_elimination(A, b)
%GAUSS_ELIMINATION Solve A*x=b by Gaussian elimination with pivoting.
[n, m] = size(A); assert(n == m && numel(b) == n, 'Incompatible dimensions.');
Ab = [A, b(:)];
for k = 1:n-1
    [~, pivotRow] = max(abs(Ab(k:n, k))); pivotRow = pivotRow + k - 1;
    assert(Ab(pivotRow, k) ~= 0, 'Matrix is singular.');
    Ab([k pivotRow], :) = Ab([pivotRow k], :);
    for i = k+1:n
        factor = Ab(i,k) / Ab(k,k);
        Ab(i,k:end) = Ab(i,k:end) - factor * Ab(k,k:end);
    end
end
x = zeros(n,1);
for i = n:-1:1
    x(i) = (Ab(i,end) - Ab(i,i+1:n) * x(i+1:n)) / Ab(i,i);
end
end
