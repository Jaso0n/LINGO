function [a]=problem1() 
clc;clear
T =10;
r = 0.08;
investcost = 90;                          %90 * 10^6美元
%% 第一种方案
F1 = myf(r,T,10*investcost);       %第10年的等年值
A1 = investym(r,T,F1);           %年金T取10

%% 第二种方案
F2 = 0;
f = zeros(1,T);
a = zeros(1,T);
for i = T:-1:1
    f(T-i+1) = myf(r,i,investcost);
    a(T-i+1) = investym(r,T,f(T-i+1));
    F2 =F2 + f(T-i+1);
end
A2 = sum(a);

%% 第三种方案
p3 = 5*investcost;
first_invest = myf(r,T,p3);
last_invest = myf(r,1,p3);
a_f = investym(r,T,first_invest);
a_l = investym(r,T,last_invest);
A3 = a_f + a_l;
F3 =first_invest + last_invest;

%% 画图
A = zeros(3,T);
A(1,:) = A1;
A(2,:) = A2;
A(3,:) = A3;
X = 1:10;
hold on
for i = 1:3
    plot(X,A(i,:));
end
legend('方案一','方案二','方案三');
title('年投资额')
xlabel('年')
ylabel('投资额')

F = [F1 F2 F3];
hold off
figure
bar(F,'b')
title('折算到第10年的总投资额')
xlabel('方案')
ylabel('投资额')
end

function f = myf(r,t,p)
f = p*(1+r)^t;
end

function a = investym(r,t,f)
a = f*r/((1+r)^t - 1);
end