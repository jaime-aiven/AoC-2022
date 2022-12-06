## Day 5

##5.1

A = load('d5in.mat');

iters = A(:,1);
origins = A(:,2);
destinations = A(:,3);

#in 48 chars with extra leading spaces to allow for space in the string

crateyard=['                                            BGSC';'                                        TMWHJNVG';'                                             MQS';'                                         BSLTWNM';'                                        JZFTVGWP';'                                         CTBGQHS';'                                           TJPBW';'                                        GDCZFTQM';'                                          NSHBPF'];
currentcrateyard = crateyard;
next_crateyard = currentcrateyard;

for i=1:length(iters)

  currentcrateyard = next_crateyard;
  next_crateyard = moveletters(currentcrateyard, iters(i), origins(i,:), destinations(i,:));


endfor

finalcy = next_crateyard;

##5.2


A = load('d5in.mat');

iters = A(:,1);
origins = A(:,2);
destinations = A(:,3);

#in 48 chars with extra leading spaces to allow for space in the string

crateyard=['                                            BGSC';'                                        TMWHJNVG';'                                             MQS';'                                         BSLTWNM';'                                        JZFTVGWP';'                                         CTBGQHS';'                                           TJPBW';'                                        GDCZFTQM';'                                          NSHBPF'];
currentcrateyard = crateyard;
next_crateyard = currentcrateyard;

for i=1:length(iters)

  currentcrateyard = next_crateyard
  next_crateyard = moveletters9001(currentcrateyard, iters(i), origins(i,:), destinations(i,:));


endfor

finalcy2 = next_crateyard

