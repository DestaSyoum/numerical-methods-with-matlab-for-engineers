function model = linear_regression(x, y)
%LINEAR_REGRESSION Fit y = intercept + slope*x by least squares.
x = x(:); y = y(:); assert(numel(x) == numel(y), 'x and y sizes differ.');
X = [ones(size(x)), x]; coefficients = X \ y;
yHat = X * coefficients;
model.intercept = coefficients(1); model.slope = coefficients(2);
model.yHat = yHat; model.r2 = 1 - sum((y-yHat).^2) / sum((y-mean(y)).^2);
end
