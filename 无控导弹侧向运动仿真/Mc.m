function Mc1 = Mc(t)

T = [0	2.1	2.105	44.1	44.105	100];
x = [2.362	2.362	0.21059	0.21059	0	0];
Mc1 = interp1(T, x, t, 'pchip', 0);

end