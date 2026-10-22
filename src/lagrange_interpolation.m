function yq = lagrange_interpolation(x, y, xq)
%LAGRANGE_INTERPOLATION Evaluate the Lagrange interpolating polynomial.
x = x(:); y = y(:); assert(numel(x) == numel(y), 'x and y sizes differ.');
yq = zeros(size(xq));
for i = 1:numel(x)
    term = ones(size(xq));
    for j = 1:numel(x)
        if j ~= i, term = term .* (xq - x(j)) / (x(i) - x(j)); end
    end
    yq = yq + y(i) * term;
end
end
