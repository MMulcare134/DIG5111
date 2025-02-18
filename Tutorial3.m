NoteC=note(0.7, 40, 2);
NoteE=note(0.5, 44, 2);
NoteG=note(0.5, 47, 2);
 
Ctriad = NoteC+NoteE+NoteG;

Ctriad_norm = Ctriad./max(abs(Ctriad));

%sound(Ctriad,11025); 
audiowrite('Ctriad.wav', Ctriad,11025); %is audio clipping why? 
