function r = compstrings(a,b)

  Fa = zeros(length(a),length(b));

  for i = 1:length(a)
    for j = 1:length(b)
      isthere = (a(i) == b(j));
      Fa (i,j) = isthere;
      if isthere == 1
        break
      endif
    endfor
    if isthere == 1
      break
    endif
  endfor

r = a(i)

  endfunction

