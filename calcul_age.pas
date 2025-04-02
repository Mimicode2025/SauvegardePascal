Program calcul_age;
Uses crt;
Var
  age : integer;
  annee : integer;

Const Pi = 3.14;
Begin
  age := 17;
 //age
  Write('veillez saisir votre age ');
  readln(age);
  Write('veillez saisir votre annee ');
  readln(annee);
  Write('mon age est ',age,' ans et je suis nee en', 2006 );
End.