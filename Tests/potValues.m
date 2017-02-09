R = 50:1000/256:1050 - 1000/256;


for i = 1 : 256
%   textString{i} = strcat(num2str(R(i)), ', ');
  fprintf(num2str(R(i)))
  fprintf(', ')
end

fprintf('\n\r')

for i = 1 : 256
%   textString{i} = strcat(num2str(R(i)), ', ');
  fprintf(num2str(1/R(i)))
  fprintf(', ')
end

fprintf('\n\r')