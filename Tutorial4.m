% noteX = note(1, 49, 2)
%function note() will create a note with a smapling frequency 11025 by
%given
%any key and any time duration
% Fs = 11025;
% Ts = 1/Fs;
% A4 = 440;                %A4 is the 49th Key in a Piano Keyboard
% ref_key=49;              %Calculate the difference between ref_key and input key
% n = key_num-ref_key;
% Freq = A4*2^2^(n/12);    %Calculate the frequency of input key 
% Time = 0:Ts:dur;

% fs = 44100;
% ts = 1/fs;
% dur = 1;
% 
% NumberOfSteps = 10;
% % This is the number of steps we want to create in our signal
% % IE: the resolution.
% t = 0:ts:dur;
% % This will create a straight line
% % We will use this to demonstrate our transfer function.
% subplot(211), plot(x); grid on; hold on;
% y = t*NumberOfSteps;
% % y is the x value, scaled by the number of steps.
% y = round(y);
% % y is then rounded to the steps.
% y = y*(1/NumberOfSteps);
% % we then divide by 1 to normalise the signal.
% plot(y, '--');
% % plot our new signal with a dashed line.
% z = sin(2*pi*1.*t);
% subplot(212), plot(z); grid on; hold on;
% NumberOfSteps2 = 3;
% y2 = z*NumberOfSteps2;
% y2 = round(y2);
% y2 = y2*(1/NumberOfSteps2);
% plot(y2, '--');


% x = -1:0.01:1;
% y = x;

noteX = note(1, 20, 0.5);
y = noteX;
x = 1:length(y);

plot(x, y, '--'), hold on;
% we set up 2 straight vectors, to demonstrate the transfer function.
% x holds the original signal, y will hold the new clipped signal.
xLength = length (x);
% we find the length of the input;
for i = 1:xLength
    if (y(i) > 0.5)
        y(i) = 0.5;
    end % if the input is higher than 0.5, the output is clipped at 0.5
    if (y(i) < -0.5)
        y(i) = -0.5;
    end % if the input is lower than -0.5, the output is clipped at -0.5
end
plot(x,y, 'r');
title('Transfer Function for Hard Clipping Distortion');
grid on;
hold off;