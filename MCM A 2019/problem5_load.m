clc
clear
y0 = 2850;
for i = 1:11
    n(i) = y0 * (1+0.03)^i;
end