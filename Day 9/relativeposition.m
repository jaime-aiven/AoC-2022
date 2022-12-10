function rp = relativeposition (tail_ori_row , tail_ori_col, head_dest_row, head_dest_col)


  if ((tail_ori_col == head_dest_col) && (tail_ori_row == head_dest_row))  #if H and T are on top of each other
    rp = 'OVERLAP';
  elseif ((tail_ori_col == head_dest_col) && (tail_ori_row > head_dest_row))  #if H is on top of T
    rp = 'ABOVE';
  elseif ((tail_ori_col == head_dest_col) && (tail_ori_row < head_dest_row))  #if H is below T
    rp = 'BELOW';
  elseif ((tail_ori_col < head_dest_col) && (tail_ori_row == head_dest_row))  #if H is just to the right of T
    rp = 'RIGHT';
  elseif (tail_ori_col > head_dest_col) && (tail_ori_row == head_dest_row)  #if H is just to the left of T
    rp = 'LEFT';
  elseif (tail_ori_col < head_dest_col) && (tail_ori_row < head_dest_row)  #if H is down and to the right from T
    rp = 'DOWNRIGHT';
  elseif (tail_ori_col < head_dest_col) && (tail_ori_row > head_dest_row)  #if H is up and to the right from T
    rp = 'UPRIGHT';
  elseif (tail_ori_col > head_dest_col) && (tail_ori_row < head_dest_row)  #if H is down and to the left from T
    rp = 'DOWNLEFT';
  elseif (tail_ori_col > head_dest_col) && (tail_ori_row > head_dest_row)  #if H is up and to the left from T
    rp = 'UPLEFT';
  else error ('Invalid movement')

  endif

endfunction
