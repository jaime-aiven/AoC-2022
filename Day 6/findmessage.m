function  pos = findmessage(str)
pos=0;

for i=1:(length(str)-13)
  holder = str(i:i+13);
  if alldiff(holder) ==1
    pos = i+13;
    break
  endif

endfor

endfunction
