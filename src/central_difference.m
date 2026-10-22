function derivative = central_difference(f, x, h)
%CENTRAL_DIFFERENCE Approximate f'(x) with second-order accuracy.
derivative = (f(x+h) - f(x-h)) / (2*h);
end
