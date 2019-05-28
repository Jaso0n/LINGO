function [pa,pu]=faultp(m,r)
u = 8760/r;
b = u + m;
pa = u/b;
pu = m/b;
end