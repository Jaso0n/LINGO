clc
clear
close all
load minadjamat.mat;

r = 3000;
ps_a = 20;
[M,N] = size(adjam);
manb = zeros(20,92);

for i = 1:M
    for j = 1:N
        if adjam(i,j) < r
            adj_map(i,j) = 1;
        else adj_map(i,j) = 0; %r <3 �Ľڵ㣬����Ϊ1��������Ϊ0
        end
    end
end

% adj_numb = sum(adj_map);
psmap = adj_map(1:20,21:end);%����ֹ���Ľڵ㣬����Ϊ1��������Ϊ0
ps_man_numb = sum(psmap');

c = sum(psmap);
uncov = find(c==0)+20;%��������Ľڵ�