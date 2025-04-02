Program Arrangement_combinaison_factorielle;
Uses crt;
function fact_2 (n:integer):int64;
Begin
	if (n=0) Then
		fact_2:=1
	else
		fact_2:=n*fact_2(n-1);
end;

(*Function fact (n:Integer): int64;
Var
  i:Integer;
	fact_n :int64 ;
Begin
  fact_n := 1;
  For i:=1 To n Do
    Begin
      fact_n := fact_n*i;
    End;
  fact := fact_n;
End;*)

Function Arrangement (n:Integer;p:Integer): real;
Begin
  Arrangement := (fact_2(n)/fact_2(n-p));
End;
Function Conbinaison (n:Integer;p:Integer): real;
Begin
  Conbinaison := Arrangement(n,p)/fact_2(p);
End;

Procedure saisir_np (Var n:Integer; Var p:Integer);
Begin
  Repeat
    Write('veullez ssaisir n:');
    read(n);
    If (n<0) Then
      Begin
        Writeln('veuillez saisir n >= 0');
      End;
  Until (n>=0);
  Repeat
    Write('veullez saisir p:');
    read(p);
    If (p>n) Then
      Begin
        Writeln('veuillez saisir p <= 0');
      End;
  Until (p<=n)
End;

Var
  n,p : Integer;
Begin
  saisir_np (n,p);
  Writeln('factorielle de n=' ,fact_2(n));
  Writeln('factorille de p=' ,fact_2(p));
  Writeln('l''arragement de ' ,n,' dans ', p, '= ' ,Arrangement(n,p):0:0);
  Writeln('la combinaison de ' , n,' dans ' , p, '= ' ,conbinaison(n,P):0:0);
End.