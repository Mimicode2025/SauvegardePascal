Program Enregistrement;
Uses crt;
const
	NB_EMPLOYE = 1;
Type
  chaine = String[20];
  date = Record
    jour : Integer;
    mois : Integer;
    annee : Integer;
  End;
Type
  Adresse = Record
    numero : chaine;
    rue : Integer;
    commune : chaine;
    codePostal : Integer;
  End;
Type
  Employe = Record
    nom : chaine;
    prenom : chaine;
    residence : Adresse;
    DateDeNaissance : date;
  End;

Function AnneeNaissance( Emp:Employe ; annee:Integer): Boolean;
Begin
  If Emp.DateDenaissance.annee < annee Then
    AnneeNaissance := True
  Else
    AnneeNaissance := False;
End;

Function Commune( Emp:Employe ; emp_commune:chaine ): Boolean;
Begin
  If Emp.residence.Commune < emp_commune Then
    Commune := True
  Else
    Commune := False;
End;
Var
  tab_employe : Array[1..2] Of Employe;
  i: Integer;
	emp_commune : chaine;
	emp_annee : integer;
Begin
  For i:= 1 To NB_EMPLOYE Do
    Begin
      Writeln('saisir les information de employe ',i);

      Write('Quel est votre nom :');
      Readln(tab_employe[i].nom);

      Write('Quel est votre prenom : ');
      Readln( tab_employe[i].prenom);

			Write('Quel est votre numero :');
      Readln(tab_employe[i].Residence.Numero);

      Write('Quel est votre rue :');
      Readln(tab_employe[i].Residence.rue);

			Write('Quel est votre commune :');
      Readln(tab_employe[i].Residence.commune);

			Write('Quel est votre code postal:');
      Readln(tab_employe[i].Residence.codePostal);

			Write('Quel est votre jour de naissance :');
      Readln(tab_employe[i].DateDeNaissance.jour);

      Write('Quel est votre mois de naissance :');
      Readln(tab_employe[i].DateDeNaissance.mois);

      Write('Quel est votre annee de naissance :');
      Readln(tab_employe[i].DateDeNaissance.annee);
		end;
		//NOM ET PREMON DES EMPOYE
		write('veullez saisir la commune :');
		readln(emp_commune);
		write('veuillez saisir l''annee :' );
    Readln(emp_annee);
		for i:= 1 to NB_EMPLOYE do
			begin
		 		if (commune(tab_employe[i],emp_commune) = true) then
		  		writeln('l''employe du nom ',tab_employe[i].nom,
					' de prenom ',tab_employe[i].prenom,
					' habite dans la commune ',emp_commune);
			 end;
			// NOM  ET PRENOM DES EMPLOYE NES AS UNE DATE
		for i:= 1 to NB_EMPLOYE Do
			Begin
				if (commune(tab_employe[i],emp_commune) = true) and
				 (AnneeNaissance(tab_employe[i], emp_annee) = true) then
				 writeln('l''employe du nom ',tab_employe[i].nom
				 					,' de prenom ',tab_employe[i].prenom
									,' habite dans la commune ',emp_commune
									,' et ne avant ',emp_annee);
			end;


End.