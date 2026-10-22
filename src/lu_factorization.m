function [L, U, P] = lu_factorization(A)
%LU_FACTORIZATION Compute PA = LU using partial pivoting.
[n,m] = size(A); assert(n == m, 'A must be square.');
U = A; L = eye(n); P = eye(n);
for k = 1:n-1
    [~, p] = max(abs(U(k:n,k))); p = p + k - 1;
    assert(U(p,k) ~= 0, 'Matrix is singular.');
    U([k p],:) = U([p k],:); P([k p],:) = P([p k],:);
    if k > 1, L([k p],1:k-1) = L([p k],1:k-1); end
    for i = k+1:n
        L(i,k) = U(i,k) / U(k,k);
        U(i,k:n) = U(i,k:n) - L(i,k) * U(k,k:n);
    end
end
end
