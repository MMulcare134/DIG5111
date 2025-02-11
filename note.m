function noteX = note(A, key_num, dur)
%function note() will create a note with a smapling frequency 11025 by
%given
%any key and any time duration
Fs = 11025;
Ts = 1/Fs;
A4 = 440;                %A4 is the 49th Key in a Piano Keyboard
ref_key=49;              %Calculate the difference between ref_key and input key
n = key_num-ref_key;
Freq = A4*2^2^(n/12);    %Calculate the frequency of input key 
Time = 0:Ts:dur;


noteX = A*sin(2*pi*Freq*Time);
end