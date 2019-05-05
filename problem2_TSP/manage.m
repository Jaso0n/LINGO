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
        else adj_map(i,j) = 0; %r <3 的节点，相邻为1，不相邻为0
        end
    end
end

% adj_numb = sum(adj_map);
psmap = adj_map(1:20,21:end);%警察局管理的节点，管理为1，不管理为0
ps_man_numb = sum(psmap');

c = sum(psmap);
uncov = find(c==0)+20;%不被管理的节点