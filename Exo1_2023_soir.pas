program Moyenne_43;
uses crt;
var i,note,som,Nbre_a_moy,Nbre_pas_moy:integer;
	Moy:real;
	tab_43 : array[1...43] of integer;
begin
	som := 0;
	Nbre_a_moy := 0;
	for i:=1 to 43 do
		begin
			write('veuillez saisir une note :');
			read(tab_43[i]);
		end;
	if tab_43[i]<0    Then ;
		write('saisir une note >=0 ');
		else if tab_43[i] > 20 Then
		    writeln('mauvaise saisie ');
		

end.