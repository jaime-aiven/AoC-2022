function newcrateyard = moveletters(crateyard, howmany, fromrow, torow)

newcrateyard = crateyard;

for j=1:howmany

  cargo = newcrateyard(fromrow,end);

  #Use placeholder vars s and d to avoid dimension mismatch
  s = [' ' newcrateyard(fromrow,1:end-1)];
  newcrateyard(fromrow,:) = s;
  d = [newcrateyard(torow,2:end) cargo];
  newcrateyard(torow,:) = d;

endfor

  endfunction
