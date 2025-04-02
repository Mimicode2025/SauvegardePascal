Program Equation;
Uses crt;
Var
  a,b,c,discriminant: Integer ;
  x1,x2,x : Real;
Begin
  Writeln('RESOLUTION DE L''EQUATION ax^2+bx+c');
  Write('veuillez saisir a:');
  read(a);
  Write('veuillez saisir b:');
  read(b);
  Write('veuillez saisir c:');
  read(c);
  discriminant := (b*b)-(4*a*c);
  Writeln('le discriminant est :',discriminant);
  If (discriminant > 0) Then
    Begin
      Write('l''equation posede deux racine x1 et x2');
      x1 := (-b + sqrt(discriminant))/(2*a);
      X2 := (-b-sqrt(discriminant))/(2*a);
      Writeln('les solution sont x1=',x1:0:2,  'x2=',x2:0:2);
    End;
  If (discriminant = 0) Then
    Begin
      Write('l''equation posede une racine x');
      x := (-b/(2*a));
      Writeln('la solution de L''equation est x= ',x:0:2);
    End;
  If (discriminant < 0) Then
    Begin
      Write('l''equation ne posede pas de solution');
    End;
End.