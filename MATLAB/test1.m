% Create a serial port object.
port = instrfind('Type', 'serial', 'Port', 'COM5', 'Tag', '');

if isempty(port)
    port = serial('COM5');
else
    fclose(port);
    port = port(1)
end

port.BaudRate = 9600;
port.DataBits = 8;
port.Parity = 'none';
port.StopBits = 1;
port.Terminator = '';

% Connect to instrument object, obj1.
fopen(port);

rawData = fread(port, 32*4);

data = typecast(typecast(uint8(rawData), 'uint32'), 'single');

% Disconnect from instrument object, obj1.
fclose(port);

% Clean up all objects.
delete(port);

plot(data(1:16), data(17:32))