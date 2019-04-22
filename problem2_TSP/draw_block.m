clc
clear
close all
load sampledata.mat;
load psdata.mat;
load citydata.mat;
load connectdata.mat;
 
x = sample_data(:,1);
y = sample_data(:,2);
[M,N]=size(conn_data);
hold on
for i = 1:M
    tx_src = x(conn_data(i,1));
    tx_ter = x(conn_data(i,2));
    
    ty_src = y(conn_data(i,1));
    ty_ter = y(conn_data(i,2));
    
    if conn_data(i,1)<=92 && conn_data(i,2)<=92
        plot(tx_src,ty_src,'*k');
        plot([tx_src;tx_ter],[ty_src;ty_ter],'b');
    end
end
pstx = x(ps_data{1,2}(1:20));
psty = y(ps_data{1,2}(1:20));
plot(pstx,psty,'or')
hold off

title('A区域连接图')

figure 
hold on
plot(x,y,'*k')
for i = 1:M
    tx_src = x(conn_data(i,1));
    tx_ter = x(conn_data(i,2));
    
    ty_src = y(conn_data(i,1));
    ty_ter = y(conn_data(i,2));
    plot([tx_src;tx_ter],[ty_src;ty_ter],'b');
end
title('全局的连接图');


apstx = x(ps_data{1,2});
apsty = y(ps_data{1,2});
plot(apstx,apsty,'or');
hold off
