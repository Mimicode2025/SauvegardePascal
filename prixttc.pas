Program prixttc;
uses crt;
Var
	prixht : real ;
	prix_ttc :real ;
	nb_article : integer;
	tva :real;
Begin
	write('saisir le prix hors taxes :');
	readln(prixht);
	writeln('saisir le nombre article :');
	readln(nb_article);
	writeln('saisir le taux tva :');
	readln(tva);
	prix_ttc:=(Prixht*nb_article)*tva/100;
	writeln('le write total est de : ',prix_ttc:0:2);
end.