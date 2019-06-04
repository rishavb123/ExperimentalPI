function [y] = linearFunction(x, theta)
    y = theta' * [1; x];
end;