function r = compstringsmult(a,b,c)


c1 = intersect(a,b);
c2 = intersect(a,c);
c3 = intersect(b,c);
c11 = intersect(c1,c2);
r = intersect(c11,c3);

  endfunction
