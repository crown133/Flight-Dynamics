clear;
clc;

y0 = [20, 0.314, 0, 0.314, 0, 20, 52.38];
% �������
% [T,Y] = ode45( 'func', t, y0 );
[T,Y] = runge(0, 11.3, y0, 0.05);

% % ��ͼ
% figure('Name','�����켣');
% plot(Y(5,:),Y(6,:), '-');  %�����켣
% 
% figure('Name','�ٶ�����');
% plot(T(:, 1),Y(1,:)); %�ٶ�����
% 
% figure('Name','�������');
% plot(T(:, 1), Y(2, :)*57.3); %�������
% 
% figure('Name','�������ٶ�');
% plot(T(:, 1), Y(3, :)*57.3); %���ٶ�
% 
% figure('Name','������');
% plot(T(:, 1), Y(4, :)*57.3); %
% % 
% % figure('Name','����');
% % plot(T(:, 1), Y(7, :)); %

figure('Name','����');
plot(T(:, 1), (Y(4, :) - Y(2, :))*57.3); %���ٶ�