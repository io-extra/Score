MODULE Notes;
IMPORT SYSTEM, Kernel, Oberon;

TYPE
  Note* = POINTER TO NoteDesc;
  NoteDesc* = RECORD
    value*: INTEGER;
    next: Note
  END;

PROCEDURE New*(N: Note; v: INTEGER) : Note;
BEGIN
  IF N = NIL THEN NEW(N) END;
  IF N # NIL THEN
    N.value := v;
    N.next := NIL
  END
  RETURN N 
END New;

PROCEDURE Get*(N: Note; x: INTEGER): INTEGER;
  VAR r,i: INTEGER; N1:Note;
BEGIN i:=0;r:=0;
  N1:=N; WHILE N1 # NIL DO 
    IF i = x THEN r := N1.value END;
    N1:=N1.next;
    INC(i)
  END
  RETURN r 
END Get;

PROCEDURE Clear*(N: Note);
BEGIN
  N.value:=0;
  N.next:=NIL
END Clear;

BEGIN
END Notes.
