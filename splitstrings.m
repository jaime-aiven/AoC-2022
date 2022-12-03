function [a,b] = splitstrings(string)
  l = length(string);
  a=substr(string,1,l/2);
  b=substr(string,(l/2)+1,l/2);
  endfunction
