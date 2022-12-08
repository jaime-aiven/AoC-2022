## 8.1

#Generate matrix with a single integer per cell
B = zeros(99,99);

fid = fopen('d8t.txt','r')

for i=1:99
  str = fgetl (fid);
  for j=1:99
    B(i,j) = str2num(substr(str,j,1));
  endfor
endfor

i=1;j=1;

visible = 2*(size(B,1)+size(B,2))-4; #do not double-count corners

for i=2:98
  for j=2:98
    ## from west, east, north, south in that order
      if (B(i,j) > max ( B(i,(1:j-1))) || B(i,j) > max (B(i,(j+1:end))) || B(i,j) > max (B((1:i-1),j)) || B(i,j) > max (B((i+1:end),j)) )
        visible = visible+1;
      endif

  endfor

endfor

visible


## 8.2


viewingdistance = zeros(99,99);
#All edges have viewingdistance zero, they don't neex to be checked

for i=2:98
  for j=2:98
     v_north = viewdist(B,i,j,'north');
     v_south = viewdist(B,i,j,'south');
     v_east = viewdist(B,i,j,'east');
     v_west = viewdist(B,i,j,'west');

     viewingdistance(i,j) = v_north*v_south*v_east*v_west;


  endfor
 endfor

 maxvw = max(viewingdistance(:))

