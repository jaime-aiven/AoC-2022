function vw = viewdist(forest, treehouse_row, treehouse_col, direction)

vw = 0;

  if strcmp(direction, 'north')
    for i=treehouse_row-1:-1:1
      if forest(i,treehouse_col) < forest (treehouse_row, treehouse_col)
        vw = vw + 1;
      else vw = vw + 1; break
      endif
    endfor

   elseif strcmp(direction, 'south')
     for i=treehouse_row+1:size(forest,2)
      if forest(i,treehouse_col) < forest (treehouse_row, treehouse_col)
        vw = vw + 1;
      else vw = vw + 1; break
      endif
    endfor

   elseif strcmp(direction, 'east')
     for i=treehouse_col+1:size(forest,2)
      if forest(treehouse_row,i) < forest (treehouse_row, treehouse_col)
        vw = vw + 1;
      else vw = vw + 1; break
      endif
     endfor

   elseif strcmp(direction, 'west')
     for i=treehouse_col-1:-1:1
      if forest(treehouse_row,i) < forest (treehouse_row, treehouse_col)
        vw = vw + 1;
      else vw = vw + 1; break
      endif
    endfor

    else error('Invalid direction');

  endif

