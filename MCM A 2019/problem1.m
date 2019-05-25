function [a]=problem1() 
clc;clear
T =10;
r = 0.08;
investcost = 90;                          %90 * 10^6��Ԫ
%% ��һ�ַ���
F1 = myf(r,T,10*investcost);       %��10��ĵ���ֵ
A1 = investym(r,T,F1);           %���Tȡ10

%% �ڶ��ַ���
F2 = 0;
f = zeros(1,T);
a = zeros(1,T);
for i = T:-1:1
    f(T-i+1) = myf(r,i,investcost);
    a(T-i+1) = investym(r,T,f(T-i+1));
    F2 =F2 + f(T-i+1);
end
A2 = sum(a);

%% �����ַ���
p3 = 5*investcost;
first_invest = myf(r,T,p3);
last_invest = myf(r,1,p3);
a_f = investym(r,T,first_invest);
a_l = investym(r,T,last_invest);
A3 = a_f + a_l;
F3 =first_invest + last_invest;

%% ��ͼ
A = zeros(3,T);
A(1,:) = A1;
A(2,:) = A2;
A(3,:) = A3;
X = 1:10;
hold on
for i = 1:3
    plot(X,A(i,:));
end
legend('����һ','������','������');
title('��Ͷ�ʶ�')
xlabel('��')
ylabel('Ͷ�ʶ�')

F = [F1 F2 F3];
hold off
figure
bar(F,'b')
title('���㵽��10�����Ͷ�ʶ�')
xlabel('����')
ylabel('Ͷ�ʶ�')
end

function f = myf(r,t,p)
f = p*(1+r)^t;
end

function a = investym(r,t,f)
a = f*r/((1+r)^t - 1);
end