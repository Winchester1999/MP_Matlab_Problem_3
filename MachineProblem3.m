function D = MachineProblem3(g)

if length(g) <= 10
    func = length(g) - 1;
else
    func = 10;
end

for n = 1:func
D = polyfit(g(:, 1), g(:, 2), n);
T = norm(g(:, 2) - polyval(D, g(:, 1)));
x = [n, T];

if n == 1
    y = x;
end


if y(2) >= x(2)
    z = x(1);
end

end

D = polyfit(g(:, 1), g(:, 2), z);

end