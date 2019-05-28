clc
clear
load m.mat;
[M,N]=size(m);
for i =1:M
    [pa(i),pu(i)]=faultp(m(i,1),m(i,2));
end
P=[pa' pu'];
