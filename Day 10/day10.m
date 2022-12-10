# Day 10

#10.1

fid = fopen('d10instructions.txt','r')
B = load('d10params.mat');

##fid = fopen('d10instructions_debug.txt','r')
##B = load('d10params_debug.mat');

X = zeros(length(B),1);
X(1) = 1;


clock=1;

#Generate vector to carry X values

for i=1:length(B)
  instruction = fgetl (fid);
  param = B(i);

  if strcmp(instruction, 'noop')
    X(clock+1) = X(clock);
    clock = clock +1;
  elseif strcmp(instruction, 'addx')
    X(clock+1) = X(clock);
    X(clock+2) = X(clock) + param;
    clock = clock +2;
  endif

endfor

signalstrength = 0;

for j=20:40:220;
  signalstrength = signalstrength + j*X(j);
endfor

signalstrength;

##10.2

canvas = zeros(1,length(B));

##spritepos = [X() X()+1 X()+2] #I'm gonna control the left of the sprite instead


for line = 1:6


  for k=1:40

##  disp('drawing pixel'), disp((40*(line-1)+k))
  spritepos = [X(40*(line-1)+k) X(40*(line-1)+k)+1 X(40*(line-1)+k)+2]

##  disp('X='), disp(X(40*(line-1)+k))

    if  (k >= X(40*(line-1)+k)) && (k <= X(40*(line-1)+k)+2)
    canvas(1,40*(line-1)+k) = '#';
    else canvas(1,40*(line-1)+k) = '.';
    endif

##    disp('printing'), disp(canvas(1,40*(line-1)+k))
  endfor

endfor

#Regular reshape function doesn't do what the problem needs
screen = [canvas(1:40); canvas(41:80); canvas(81:120); canvas(121:160); canvas(161:200); canvas(201:240)];
