## Day 4

##4.1
C = load('d4inmat.mat');

A = C(:,1:2);
B = C(:,3:4);

counter = 0;

for i=1:1000

A_row = [A(i,1):A(i,2)];
B_row = [B(i,1):B(i,2)];

Int = intersect(A_row,B_row);

if or(isequal(Int, A_row),isequal(Int, B_row))
  counter = counter + 1;
endif

endfor

counter


##4.2

counter2 = 0;

for j=1:1000

A_row2 = [A(j,1):A(j,2)];
B_row2 = [B(j,1):B(j,2)];

Int2 = intersect(A_row2,B_row2);

  if Int2 != 0
    counter2 = counter2 + 1;
  endif

endfor

counter2
