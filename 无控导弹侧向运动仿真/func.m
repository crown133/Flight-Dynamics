function dy = func(t, y)
rou = 1.225;
s = 0.0227;
vs = 343.13;
g = 9.88;
L = 1.8;
Xg0 = 0.9381;

Alpha = (y(4) - y(2));
V = y(1);
Theta = y(2);
m = y(7);
Ma = y(1) / 343.13;
Cx0 = Cx(Alpha * 57.3, Ma);
Cy0 = Cy(Alpha * 57.3, Ma);

dy = zeros(7, 1);
dy(1) = (P(t) * cos(Alpha) - Cx0* rou * V^2 * s/2) / m - g* sin(Theta);
dy(2) = ((P(t) * sin(Alpha) + Cy0* rou * V^2 * s/2) / m - g* cos(Theta)) / V;
dy(3) = ( MzAlpha(Alpha * 57.3, Ma) + Cy0*(Xg(t) - Xg0)/L + 4*MzOmg(Alpha * 57.3, Ma, Xg(t)) * y(3)*L/V )*rou * V^2 * s/2*L / Jz(t);
dy(4) = y(3);
dy(5) = V * cos(Theta);
dy(6) = V * sin(Theta);
dy(7) = -Mc(t);

end
