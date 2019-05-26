
function Z = Cx(x, y)  %输入为 攻角和马赫数
X1 = [0	2	4	6	8	10];
Y1 = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];
Z1 = [.4177	.4404	.5219	.6603	.8534	1.1023  %马赫数为0时
    .4177	.4404	.5219	.6603	.8534	1.1023
    .3858	.4086	.4903	.6290	.8226	1.0723
    .3779	.4007	.4827	.6218	.8160	1.0666
    .3785	.4015	.4838	.6234	.8184	1.0700
    .3787	.4018	.4846	.6249	.8209	1.0738
    .3829	.4062	.4897	.6310	.8284	1.0835
    .3855	.4091	.4934	.6363	.8358	1.0938
    .4082	.4321	.5175	.6621	.8641	1.1254
    .4947	.5192	.6073	.7571	.9672	1.2392 ];
Z = interp2(X1, Y1, Z1, abs(x), y, 'cubic');

% if x < 0
%     Z = -Z;
% end

end