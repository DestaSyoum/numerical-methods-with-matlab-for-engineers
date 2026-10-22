function coefficients = poly_least_squares(x, y, degree)
%POLY_LEAST_SQUARES Fit a polynomial in ascending power order.
x = x(:); y = y(:); assert(numel(x) > degree, 'Need more points than degree.');
V = zeros(numel(x), degree+1);
for j = 0:degree, V(:,j+1) = x.^j; end
coefficients = V \ y;
end
