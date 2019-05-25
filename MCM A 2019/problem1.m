function []=problem1() 
clc;clear
T =10;
r = 0.08;
investcost = 90;                          %90 * 10^6美元
%% 第一种方法
A1 = zeros(1,10);
F1 = myf(r,T,10*investcost);       %第10年的等年值
A1(1,:) = investym(r,T,F1);                %年金T取10
plot(A1);

hold on
%% 第二种方法
F2 = 0;
f = zeros(1,T);
a = zeros(1,T);
mats = zeros(T,T);

for i = T:-1:1
    f(T-i+1) = myf(r,i,investcost);
    a(T-i+1) = investym(r,i,f(T-i+1));
    F2 =F2 + f(T-i+1);
end

for i =1:T
    mats(i,:) = a(i);
end
for i =1 :T
    for j = 1:T 
        if i>j
            mats(i,j) =0;
        end
    end
end
A2 = sum(mats);
plot(A2)

%% 第三种方法
first_invest = myf(r,T,5*investcost);
last_invest = myf(r,1,5*investcost);
a_f = investym(r,T,first_invest);
a_l = investym(r,1,last_invest);
A3 = zeros(2,10);
A3(1,:) = a_f;
A3(2,10) = a_l; 
A3 = sum(A3);
F3 =first_invest + last_invest;
plot(A3);
legend('方案一','方案二','方案三')
title('每年投资费用')
xlabel('年')
ylabel('投资费用')
hold off
F = [F1 F2 F3];
figure
bar(F,'b')
xlabel('方案')
ylabel('投资费用')
end

function f = myf(r,t,p)
f = p*(1+r)^t;
end

function a = investym(r,t,f)
a = f*r/((1+r)^t - 1);
end
