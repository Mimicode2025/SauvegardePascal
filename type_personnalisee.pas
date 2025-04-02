program persannaliser;
uses crt;
Type
 chaine = string[20];
 etudiant_t = Record
 	nom : chaine;
	prenom : chaine;
	sexe : char ;
	salle : chaine;
	numero : chaine ;
	date_de_naissance : Record
		jour : integer;
		mois : integer;
		annee : integer;
	end;
 End;
var
 etudiant_1:etudiant_t;
 etudiant_2:etudiant_t;
Begin
with etudiant_1 do
begin
writeln('Quel est votre nom ?');
readln(nom);      

writeln('Quel est votre prenom ?');
readln(prenom);

writeln('Quel est votre sexe ?');
readln(sexe);

with date_de_naissance Do
begin
writeln('Quel est votre jour de naissance ?');
readln(jour);

writeln('Quel est votre mois de naissance ?');
readln(mois);

writeln('Quel est votre annee de naissance ?');
readln(annee);

writeln('Quel est votre salle ?');
readln(salle);

writeln('Quel est votre Numero?');
readln(numero);

writeln();

writeln('nom:',nom);
writeln('prenom:',prenom);
writeln('sexe:',sexe);
writeln('salle:',salle);
writeln('numero:',numero);
writeln('la date de naissance est:',jour,'/',mois,'/',annee);
end;
end;
end.