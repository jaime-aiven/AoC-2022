S = csvread('d3.csv');
R = sum(S');
A11 = max(R)
A12 = sum((sort (R))(:,(size(R)(2)-2):size(R)(2)))
