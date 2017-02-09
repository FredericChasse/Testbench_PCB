clear all
close all

% Wait for the user to start the program
reply = 'N';
while reply == 'N'
  reply = upper(input('Start? Y/N [N]:','s'));
  if isempty(reply)
    reply = 'Y'
  end
end

% Create a serial port object.
port = instrfind('Type', 'serial', 'Port', 'COM5', 'Tag', '');

if isempty(port)
    port = serial('COM5');
else
    fclose(port);
    port = port(1)
end

global nSolarCells;

nSolarCells = 4;

global matlabMode;

% matlabMode = 'p';   % PSO
matlabMode = 'c';   % Caracterization
% matlabMode = 'm';   % Multi-Unit

global psoData;
psoData = [];

if matlabMode == 'p'
  port.BytesAvailableFcnCount = 224; % 56 floats to receive = 224 bytes
elseif matlabMode == 'c'
  port.BytesAvailableFcnCount = 140; % 35 floats to receive = 140 bytes
elseif matlabMode == 'm'
  port.BytesAvailableFcnCount = 140; % 35 floats to receive = 140 bytes
end
port.BytesAvailableFcnMode = 'byte';
port.BytesAvailableFcn = {@myCallback};

port.BaudRate = 115200;
port.DataBits = 8;
port.Parity = 'none';
port.StopBits = 1;
port.Terminator = '';

% Connect to instrument object, port.
fopen(port);

fwrite(port, matlabMode)

if matlabMode == 'p'
  nSolarCells = 3;
  
% Create figure for data
  for i = 1 : nSolarCells*2
    fig(i) = figure(i);
    hold on
  end
  
elseif matlabMode == 'c'
  nSolarCells = 4;
  
% Create figure for data
  for i = 1 : nSolarCells
    fig(i) = figure(i);
    hold on
  end
  
elseif matlabMode == 'm'
  nSolarCells = 2;
  
% Create figure for data
  for i = 1 : nSolarCells*2
    fig(i) = figure(i);
    hold on
  end
  
end


if (i == 4)
  pos2 = fig(2).Position;
  fig(2).Position = [1860 pos2(2) pos2(3) pos2(4)];
  pos3 = fig(3).Position;
  fig(3).Position = [pos3(1) 100 pos3(3) pos3(4)];
  pos4 = fig(4).Position;
  fig(4).Position = [1860 100 pos4(3) pos4(4)];
else
  fig(1).Position = [0        838 840 630];
  fig(2).Position = [840      838 840 630];
  fig(3).Position = [840+840  838 840 630];
  fig(4).Position = [0        88  840 630];
  fig(5).Position = [840      88  840 630];
  fig(6).Position = [840+840  88  840 630];
end

% Wait for the user to stop the program
reply = 'N';
while reply == 'N'
  reply = input('Stop? Y/N [Y]:','s');
  if isempty(reply)
    reply = 'Y'
  end
end

fwrite(port, 's')

% Disconnect from instrument object, obj1.
fclose(port);

% Clean up all objects.
delete(port);

if matlabMode == 'c'
  % Extract data from figure
  for i = 1 : nSolarCells
    axesObjs = get(fig(i), 'Children');
    dataObjs = get(axesObjs, 'Children');
    xdata = get(dataObjs, 'XData');
    ydata = get(dataObjs, 'YData');
    ndata = length(xdata);

    x1 = [xdata{ndata}];
    y1 = [ydata{ndata}];
    for j = ndata - 1 : -1 : 1
      x1 = [x1 xdata{j}];
      y1 = [y1 ydata{j}];
    end

    R(i,:) = x1./256.*1000 + 50;
  %   P(i,:) = y1.^2 ./ R(i,:);
    P(i,:) = y1;
  end

  fig(i+1) = figure(i +1);
  hold on
  for i = 1 : nSolarCells
    plot(R(i,:), P(i,:))
  end
  legend({'Cellule 1' 'Cellule 2' 'Cellule 3' 'Cellule 4'})
  title('Duty cycle = test%')
  
  for i = 1 : nSolarCells
    Ropt(i) = R(i,find(P(i,:) >= max(P(i,:))));
  end
  
  Ropt
  % 
  % saveas(fig(nSolarCells + 1),'4cells/test','fig')
  % saveas(fig(nSolarCells + 1),'4cells/test','jpg')
elseif matlabMode == 'p'
  format short g
  psoString = {'i' 'Pbest1' 'Pbest2' 'Pbest3' 'Gbest' 'v1' 'v2' 'v3'}
  psoData
%   close all
elseif matlabMode == 'm'
%   close all
end