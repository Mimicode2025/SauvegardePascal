program PourLesMordus;
var nbreSecret,nbreSaisie,i: integer;
Begin
    nbreSecret:=7;
		i:=0;
	repeat
		write('veuillez deviner le nombre secret et le saisir:');
		readln(nbreSaisie);
		 i:=i+1;
  until(nbreSecret=nbreSaisie);
	if nbreSecret=nbreSaisie Then
		begin
		   i:=1;
			 write('Bravo, tu as trouve le nombre secret a la premiere tentative. Sorcier va !');
		end;
	
end.