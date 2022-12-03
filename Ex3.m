%%Exercise 3


## 3.1

fid = fopen('day3.txt','r')


lets = "";
Repeat = zeros(300,1);


accsum = 0;

for i=1:300

  str = fgetl (fid);


  [c,d] = splitstrings(str);

  foundrepeated = compstrings(c,d);

  y2 = assignlettervalues (foundrepeated);

  accsum = accsum + y;

  ## These are useful for debugging
  lets = [lets foundrepeated];
  Repeat (i,1) = y;

endfor



## 3.2

fid = fopen('day3.txt','r')

accsum2 = 0;

for i=1:100

  g1 = fgetl (fid);
  g2 = fgetl (fid);
  g3 = fgetl (fid);

  foundrepeated = compstringsmult(g1, g2, g3);
  y2 = assignlettervalues (foundrepeated);

  accsum2 = accsum2 + y2;

endfor


