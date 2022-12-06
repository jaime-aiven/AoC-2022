function io = alldiff(str)
io = 1;
  for i=1:length(str)
    c = strfind(str,str(i));
    if size(c,2)>1
      io = 0;
      break
    endif
  endfor

