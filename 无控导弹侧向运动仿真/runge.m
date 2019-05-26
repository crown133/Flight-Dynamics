function [T, y] = runge(x0, x1, y0, h)
n = (x1 - x0) / h;  %Çó²½³¤
T = zeros(n + 1);
y = zeros(7, n + 1);
T(1) = x0;

for j = 1:7
    y(j,1) = y0(j);
end

for i = 1:n
    T(i + 1) = T(i) + h;
    k1 = func(T(i), y(:, i));
    k2 = func(T(i) + 0.5*h, y(:, i) + k1*h/2);
    k3 = func(T(i) + 0.5*h, y(:, i) + k2*h/2);
    k4 = func(T(i)+ h, y(:, i) + k3*h);
    y(:, i + 1) = y(:, i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
end

end
