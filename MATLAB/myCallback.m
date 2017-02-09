function myCallback(obj,event)

global nSolarCells;
global matlabMode;
global psoData;

bytesAvailable = obj.BytesAvailable;
if matlabMode == 'p'
  rawData = fread(obj, 224); % 56 floats to receive = 224 bytes
elseif matlabMode == 'c'
  rawData = fread(obj, 140); % 35 floats to receive = 140 bytes
elseif matlabMode == 'm'
  rawData = fread(obj, 140); % 35 floats to receive = 140 bytes
end

% rawData = fread(obj, bytesAvailable);
% valuesReceived = obj.ValuesReceived;

% time = event.Data.AbsTime;
% tMax = time(5) + time(6)/60;
% tMin = tMax - 30*.05/60;
% x = tMin + .05/60 : .05/60 : tMax;
% x = 0 : 2*pi/32 : 2*pi - 2*pi/32;

% Convert UINT8 to float
data = typecast(typecast(uint8(rawData), 'uint32'), 'single');

% Add data to figure
if matlabMode == 'c'
  xdata = data(1 : nSolarCells + 1 : end);
  for i = 1 : nSolarCells
    ydata = data(i + 1 : nSolarCells + 1 : end);
    fig = figure(i);
    plot(xdata, ydata, 'b')
  end
elseif matlabMode == 'm'
  xdata = data(1 : nSolarCells*2 + 1 : end);
  for i = 1 : nSolarCells*2
    ydata = data(i + 1 : nSolarCells*2 + 1 : end);
    fig = figure(i);
    plot(xdata, ydata, 'b')
  end
elseif matlabMode == 'p'
  xdata = data(1 : nSolarCells*2 + 1 + 7 : end);
  for i = 1 : nSolarCells*2
    ydata = data(i + 1 : nSolarCells*2 + 1 + 7 : end);
    fig = figure(i);
    plot(xdata, ydata, 'b')
  end
  
  newData = [xdata                                                      ...
            ,data(nSolarCells*2 + 1 + 1 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 2 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 3 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 4 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 5 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 6 : nSolarCells*2 + 1 + 7 : end)  ...
            ,data(nSolarCells*2 + 1 + 7 : nSolarCells*2 + 1 + 7 : end)  ...
            ];
          
  psoData = [psoData; newData];
end

end % myCallback