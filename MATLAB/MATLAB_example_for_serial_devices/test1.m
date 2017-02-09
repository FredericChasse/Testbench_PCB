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

A = zeros(60,1);

while (A == 0)
  A = fread(port, 50)
end

A

% Disconnect from instrument object, obj1.
fclose(port);

% Clean up all objects.
delete(port);