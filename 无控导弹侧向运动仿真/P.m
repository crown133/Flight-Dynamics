function P1 = P(t)

T = [.000	.15	.49	2.11	2.27	3.53	8.78	25.45	42.80	43.68	44.08];
x = [331.2	614.3	505.4	607.8	48.65	43.97	42.01	41.00	40.80	40.79	2.22];
P1 = interp1(T, x, t, 'pchip')*9.8;

if t > 44.08
    P1 = 0;
end

end