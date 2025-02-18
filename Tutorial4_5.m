% Generate a note
noteX = note(1, 20, 0.5);
y = noteX;
x = 1:length(y);

% Plot the original signal
plot(x, y, '--'), hold on;

% Apply hard clipping distortion
xLength = length(x);
for i = 1:xLength
    if (y(i) > 0.5)
        y(i) = 0.5;
    end
    if (y(i) < -0.5)
        y(i) = -0.5;
    end
end

% Plot the clipped signal
plot(x, y, 'r');

% Normalize the clipped signal to the full range [-1, 1]
maxClipped = max(abs(y));
if maxClipped > 0
    yNormalized = y / maxClipped;
else
    yNormalized = y; % Avoid division by zero
end

% Plot the normalized clipped signal
plot(x, yNormalized, 'g');
title('Transfer Function for Hard Clipping Distortion');
legend('Original Signal', 'Clipped Signal', 'Normalized Clipped Signal');
grid on;
hold off;