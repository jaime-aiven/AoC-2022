## Day 9


A = zeros(10000,10000);

t = cputime;

fid = fopen('d9in_dirs.txt','r')

B = load('d9in_howfar.mat');

#Set some random starting point in the middle of a huge matrix to avoid boundaries

[head_ori_row, head_ori_col, tail_ori_row, tail_ori_col, tail_dest_row, tail_dest_col] = deal(5000, 5000, 5000, 5000, 5000, 5000);

for i=1:length(B)
  dir = fgetl (fid);

  howmany = B(i);

  for j = 1:howmany
    [head_dest_row, head_dest_col] = movehead(head_ori_row, head_ori_col, dir, 1);
    if norm(([head_dest_row, head_dest_col]-[tail_ori_row, tail_ori_col]))> sqrt(2) #only move the tail if there was already tension on the rope
       [tail_dest_row, tail_dest_col] = movetail(tail_ori_row, tail_ori_col, head_dest_row, head_dest_col, dir, 1);
    endif


    A(tail_dest_row, tail_dest_col) = 1; #mark the spot where the tail has landed

    #Update positions for next pass of the loop
    head_ori_row = head_dest_row;
    head_ori_col = head_dest_col;
    tail_ori_row = tail_dest_row;
    tail_ori_col = tail_dest_col;
  endfor

 endfor

tailmemory = sum(A(:))

printf('Total cpu time: %f seconds\n', cputime-t);
