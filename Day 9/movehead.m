function  [head_dest_row, head_dest_col] = movehead(head_ori_row, head_ori_col, dir, howmany);

head_dest_row = head_ori_row;
head_dest_col = head_ori_col;


for i=1:howmany

  if strcmp(dir, 'U')
    head_dest_row = head_dest_row -1;
   elseif strcmp(dir, 'D')
    head_dest_row = head_dest_row +1;
   elseif strcmp(dir, 'L')
    head_dest_col = head_dest_col-1;
   elseif strcmp(dir, 'R')
    head_dest_col = head_dest_col+1;
   else error('invalid direction')
  endif


endfor

endfunction
