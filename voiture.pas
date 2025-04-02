Program voiture;
Uses crt;

Const
  NB_MODELE = 2;
  NB_VENDEUR = 2;
Var
  vendeur,modele,j,som1: integer;
  tabP : Array [1..NB_MODELE] Of Integer;
  tabAff: Array [1..NB_VENDEUR] Of Integer;
  tabVM : Array [1..NB_VENDEUR,1..NB_MODELE] Of Integer;
	vend ,min : integer;
Function chiffreAffaire : Integer;
Var
  som ,i : Integer;
Begin
  som := 0;
  For i:=1 To NB_VENDEUR Do
    som := som+ tabAff[vendeur];
		chiffreAffaire := som;
End;
Begin
  For modele :=1 To NB_MODELE Do
    Begin
      For vendeur :=1 To NB_VENDEUR Do
        Begin
          Write('veuillez saisir le nbre modele ',modele,' du vendeur ',vendeur,':');
          Readln(tabVM[modele,vendeur]);
        End;
    End;
		// TABLEAU DES PRIX DE MODELE
  For j:=1 To NB_MODELE Do
    Begin
      Write('saisir le prix du modele ',j,':');
      read(tabP[j]);

    End;
		//NBRE DE MODELLE VENDUT
  For modele:=1 To NB_MODELE Do
    Begin
      som1 := 0;
      For vendeur:=1 To NB_VENDEUR Do
        Begin
          som1 := som1+tabVM[vendeur,modele];
        End;
      Writeln(' le nombre de modele ',modele,' vendu est : ',som1);
    End;
		//TAbleau chiffre affaire
  For vendeur:= 1 To NB_VENDEUR Do
    Begin
      tabAff[vendeur] := 0;
      For modele := 1 To NB_MODELE Do
        Begin
          tabAff[vendeur] := tabAff[vendeur] + (tabP[modele]*tabVM[vendeur,modele]);
        End;
      Writeln(' le chiffre affaire du vendeur ',vendeur,' est :',tabAff[vendeur]);
    End;
		//TRIE DANS L'ORDER CROISSANT
		FOR VENDEUR :=1 TO NB_VENDEUR do
		 BEGIN
		 	FOR VEND := VENDEUR+1 TO NB_VENDEUR  do
				Begin
						if tabAff[vend]<tabAff[vendeur] then
							begin
							 min:= tabAff[vend];
							 tabAff[vend]:=tabAff[vendeur];
							 tabAff[vendeur]:= min ;
					 		end;
				end;
		 	
		 END;
  Writeln('le chiffre affaire affaire generale de la concession est:',chiffreAffaire());
	for vendeur :=1 to NB_VENDEUR  do
	 writeln(' le trie ds l''ordes croissant est :',tabAff[vendeur]);  
End.