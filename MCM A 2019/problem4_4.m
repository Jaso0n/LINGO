clc
clear

RATE =[0.67 0.63 0.59 0.58 0.59 0.60 0.74 0.86 0.95 0.96 ...
    0.96 0.95 0.94 0.95 0.95 0.96 0.98 1.00 1.00 0.95 0.91 0.82 0.73 0.63 ];
for i = 1:24
    [A(i),B(i)] = problem4_3(RATE(i));
end
pLOLP = mean(A);
pEENS = mean(B);
plossm = pEENS * 10^4;

tLOLP = sum(A);
tEENS = sum(B);
tlossm = tEENS * 10^4;