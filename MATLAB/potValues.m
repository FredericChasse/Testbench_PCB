% R = 50:1000/256:1050 - 1000/256;
R = 50:1000/255:1050;

for i = 1 : 256
%   textString{i} = strcat(num2str(R(i)). '. ');
  fprintf(num2str(R(i)))
  fprintf(', ')
end

fprintf('\n\r')

Rinv = 1./R;

for i = 1 : 256
%   textString{i} = strcat(num2str(R(i)). '. ');
  fprintf(num2str(Rinv(i)))
  fprintf(', ')
end

fprintf('\n\r')

deg = -35 : 1 : 35;

for i = 1 : 71
  fprintf(num2str(deg(i)))
  fprintf(', ')
end

fprintf('\n\r')

leftMmNeg = [111.99,110.06,108.12,106.15,104.16,102.15,100.12,98.07,96,93.91, ...
91.8,89.67,87.53,85.36,83.17,80.97,78.75,76.51,74.26,71.99,69.7,67.4,65.08,62.75, ...
60.41,58.05,55.68,53.3,50.91,48.51,46.1,43.68,41.26,38.83,36.39];

leftMmPos = [113.89,115.78,117.64,119.48,121.3,123.09,124.87,126.63,128.36,130.07,131.76,...
133.43,135.08,136.71,138.32,139.91,141.7,143.02,144.55,146.05,147.54,149.01,150.46,151.88,...
153.29,154.68,156.05,157.4,158.74,160.05,161.35,162.63,163.89,165.14,166.36,167.57];

leftMm = [fliplr(leftMmNeg) leftMmPos];

for i = 1 : 71
  fprintf(num2str(leftMm(i)))
  fprintf(', ')
end

fprintf('\n\r')

rightMmNeg = leftMmPos(2:36);

rightMmPos = [leftMmPos(1) leftMmNeg];

rightMm = [fliplr(rightMmNeg) rightMmPos];

for i = 1 : 71
  fprintf(num2str(rightMm(i)))
  fprintf(', ')
end

fprintf('\n\r')