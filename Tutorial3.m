NoteC=note(0.7, 40, 2);
NoteE=note(0.5, 44, 2);
NoteG=note(0.5, 47, 2);
 
Ctriad = NoteC+NoteE+NoteG;

Ctriad_norm = Ctriad./max(Ctriad_org);
