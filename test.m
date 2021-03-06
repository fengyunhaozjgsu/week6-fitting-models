%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 胡克定律
%
% 加载数据： 弹簧受力f, 拉伸长度x
% 拟合一条直线f = kx，并打印出拟合的绝对偏差之和、最小二乘以及切比雪夫准则下的误差值
% 在图中画出拟合的直线、拟合点（蓝色圆）、实际点（红色方块）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
load('data/spring');

k = fit_slope(x, f);

abs_diff = abs(f - k*x);
fprintf('拟合 f = kx\n');
fprintf('\t绝对偏差之和: %f\n', sum(abs_diff));
fprintf('\t最小二乘: %f\n', sum(abs_diff .^ 2));
fprintf('\t切比雪夫: %f\n', max(abs_diff)); 

subplot(2, 2, 1);
hold on;
t = linspace(0, max(x), 100);
plot(x, f, 'rs', 'MarkerFaceColor', 'r');
plot(x, k*x, 'bo', 'MarkerFaceColor', 'b');
plot(t, k*t, 'b-');
legend('实际值', '预测值', 'f = kx');
title('f = kx');
xlabel('x');
ylabel('f');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  y = kx^3
%
% 加载数据： x, y
% 拟合一条曲线y = kx^3，并打印出拟合的绝对偏差之和、最小二乘以及切比雪夫准则下的误差值
% 在图中画出拟合的曲线、拟合点（蓝色圆）、实际点（红色方块）
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
load('data/x3');

% % Insert your code here

subplot(2, 2, 2);
hold on;
plot(x, y, 'rs', 'MarkerFaceColor', 'r');
title('y = kx^3');
xlabel('x');
ylabel('y');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  鱼的重量预测
%
% 加载数据： 鱼的重量W，长度l，腰围g
% 预测鱼的重量有两种方式： 
%           (1) W = cl^3
%           (2) W = klg^2
% 分别用两种方法进行拟合，并打印出每种方法拟合的绝对偏差之和、最小二乘以及切比雪夫准则下的误差值
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
load('data/fish');

% Insert your code here

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  未知数据1
%
% 加载数据： x, y
% 我们获取了一组未知数据，现在要用这组数据来尝试拟合如下模型：
%       (1) y = ax
%       (2) y = ax + b
%       (3) y = ax^2
% 分别用上述三种模型进行拟合，并打印出每种方法拟合的绝对偏差之和、最小二乘以及切比雪夫准则下的误差值
% 在图中分别画出每种方法拟合的曲线、拟合点以及实际实际点
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
load('data/unknown');

% % Insert your code here

subplot(2, 2, 3);
hold on;
plot(x, y, 'rs', 'MarkerFaceColor', 'r');
title('Unknown data 1');
xlabel('x');
ylabel('y');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  未知数据2
%
% 加载数据： x, y
% 我们获取了一组未知数据，现在要用这组数据来尝试拟合如下模型：
%       (1) y = ax + b
%       (2) y = ax^2
%       (3) y = ax^3
%       (4) y = ax^3 + bx^2 + c
% 分别用上述模型进行拟合，并打印出每种方法拟合的绝对偏差之和、最小二乘以及切比雪夫准则下的误差值
% 在图中分别画出每种方法拟合的曲线、拟合点以及实际实际点
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
load('data/unknown2');

% % Insert your code here

subplot(2, 2, 4);
hold on;
plot(x, y, 'rs', 'MarkerFaceColor', 'r');
title('Unknown data 2');
xlabel('x');
ylabel('y');