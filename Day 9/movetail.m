function  [tail_dest_row, tail_dest_col] = movetail(tail_ori_row, tail_ori_col, head_dest_row, head_dest_col, dir, howmany);

tail_dest_row = tail_ori_row;
tail_dest_col = tail_ori_col;

for i=1:howmany

rp = relativeposition(tail_ori_row , tail_ori_col, head_dest_row, head_dest_col);

if strcmp(dir, 'U') #moving up
  if strcmp(rp, 'OVERLAP')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'ABOVE')
       tail_dest_row = tail_dest_row-1; # tail simply moves 1 row up in the same column
    elseif strcmp(rp, 'BELOW')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'RIGHT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'LEFT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'DOWNRIGHT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'UPRIGHT')
      tail_dest_row = tail_dest_row-1; # tail moves 1 row up and 1 column to the right
      tail_dest_col = tail_dest_col+1;
    elseif strcmp(rp, 'DOWNLEFT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'UPLEFT')
      tail_dest_row = tail_dest_row-1; # tail moves 1 row up and 1 column to the left
      tail_dest_col = tail_dest_col-1;
    endif

elseif strcmp(dir, 'D') #moving down
  if strcmp(rp, 'OVERLAP')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'ABOVE')
       tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'BELOW')
      tail_dest_row = tail_dest_row+1; # tail moves 1 row down
    elseif strcmp(rp, 'RIGHT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'LEFT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'DOWNRIGHT')
      tail_dest_row = tail_dest_row+1; # tail moves 1 row down and 1 column to the right
      tail_dest_col = tail_dest_col+1;
    elseif strcmp(rp, 'UPRIGHT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'DOWNLEFT')
      tail_dest_row = tail_dest_row+1; # tail moves 1 row down and 1 column to the left
      tail_dest_col = tail_dest_col-1;
    elseif strcmp(rp, 'UPLEFT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
      tail_dest_col = tail_dest_col-1;
    endif

elseif strcmp(dir, 'R') #moving right
  if strcmp(rp, 'OVERLAP')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'ABOVE')
       tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'BELOW')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'RIGHT')
      tail_dest_col = tail_dest_col+1; # tail moves 1 column to the right
    elseif strcmp(rp, 'LEFT')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'DOWNRIGHT')
      tail_dest_row = tail_dest_row+1; # tail moves 1 row down and 1 column to the right
      tail_dest_col = tail_dest_col+1;
    elseif strcmp(rp, 'UPRIGHT')
      tail_dest_row = tail_dest_row-1; # tail moves 1 row up and 1 column to the right
      tail_dest_col = tail_dest_col+1;
    elseif strcmp(rp, 'DOWNLEFT')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'UPLEFT')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    endif

elseif strcmp(dir, 'L') #moving left
  if strcmp(rp, 'OVERLAP')
      tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'ABOVE')
       tail_dest_row = tail_dest_row-0; # tail stays in place
    elseif strcmp(rp, 'BELOW')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'RIGHT')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'LEFT')
      tail_dest_col = tail_dest_col-1; # tail moves 1 column to the left
    elseif strcmp(rp, 'DOWNRIGHT')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'UPRIGHT')
      tail_dest_row = tail_dest_row+0; # tail stays in place
    elseif strcmp(rp, 'DOWNLEFT')
      tail_dest_row = tail_dest_row+1; # tail moves 1 row down and 1 column to the left
      tail_dest_col = tail_dest_col-1;
    elseif strcmp(rp, 'UPLEFT')
      tail_dest_row = tail_dest_row-1; # tail moves 1 row up and 1 column to the left
      tail_dest_col = tail_dest_col-1;
    endif

  endif



endfor


endfunction

