function [theta, J_history] = linearRegression(X, y, alpha, iter)
    [theta, J_history] = gradientDescent([ones(size(X, 1), 1) X], y, zeros(size(X, 2) + 1, 1), alpha, iter);
end;

function J = computeCost(X, y, theta)
    J = (X*theta - y)'*(X*theta - y) / (2 * length(y));
end;

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

    m = length(y);
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters

        gradient = zeros(length(theta), 1);
        for i = 1:m
            x = X(i, :)';
            gradient = gradient + (theta' * x - y(i)) * x;
        end
        
        gradient = gradient / m;
        % gradient

        theta = theta - alpha * gradient;

        J_history(iter) = computeCost(X, y, theta);

    end

end
