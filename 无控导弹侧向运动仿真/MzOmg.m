function z = MzOmg(x, y, xg)  %输入为 攻角和马赫数
xg0 = [0.9381 0.8896];
Mz = [MzOmg1(x,y) MzOmg2(x,y)];
z = interp1( xg0, Mz, xg, 'linear');

end
