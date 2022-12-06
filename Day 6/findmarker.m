function  pos = findmarker(str)
pos=0;

for i=1:(length(str)-3)
  holder = str(i:i+3);
  if ~(strcmp(holder(1),holder(2))| strcmp(holder(1),holder(3)) | strcmp(holder(1),holder(4)) | strcmp(holder(2),holder(3)) | strcmp(holder(2),holder(4)) | strcmp(holder(3),holder(4)))
    pos = i+3;
    break
  endif

endfor

endfunction
