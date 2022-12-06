function newcrateyard = moveletters9001(crateyard, howmany, fromrow, torow)

newcrateyard = crateyard;
cargo = newcrateyard(fromrow,(end-howmany+1):end);

for j=1:howmany
  s = [' ' newcrateyard(fromrow,1:end-1)];
  newcrateyard(fromrow,:) = s;
endfor

for k=1:howmany
  d = [newcrateyard(torow,2:end) cargo(k)];
  newcrateyard(torow,:) = d;
  endfor

  endfunction
