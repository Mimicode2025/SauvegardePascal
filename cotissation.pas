Program cotisation ;
uses crt ;
Const
NB_LIGNE = 2 ;
NB_COLONNE = 3;
var ligne,colonne,som1,som2,trimestre: longint;
tabC: array [1..4,1..10] of integer;
//PROCEDURE AFFICHAGE COTISATION  D'UN TRIMESTRE
	PROCEDURE AffichageCotisation ( trimestre:integer);
	var i:integer;
	Begin
	 for i:=1 to NB_COLONNE Do
	 	begin
		   writeln('la cotisation du parcelle ',i,' est: ',tabC[trimestre,i]);
		 end;
	end;
//FONCTION PLUS GRANDE COTISATION D'UN TRIMESTRE
  FUNCTION PlusGrandeCotisation(trimestre:integer):integer;
	Var maxC,i : integer;
	begin
	    maxC:=tabC[trimestre,1];
			for i:=2 to NB_COLONNE Do
				begin
					if maxC < tabC [trimestre,i] Then
					  maxC := tabC[trimestre,i];
				end;
				PlusGrandeCotisation := maxC;
		end;
	//FONCTION PLUS PETIT COTISATION D'UN TRIMESTRE
	FUNCTION PlusPetitCotisation(trimestre:integer):integer;
	var minC,i : integer;
	begin
	  minC := tabC[trimestre,1];
	  for i:=2 to NB_COLONNE do
	 	 begin
		  if minC > tabC [trimestre,i] Then
	  	 minC := tabC[trimestre,i];
		 end;
		 PlusPetitCotisation := minC;
	end;
	//MOYENNE DES COTISATIONS D'UN TRIMESTRE
	FUNCTION MoyenneCotisations(trimestre:integer):real;
	var som,i:integer;
	Begin
	som:=0;
		for i:=1 to NB_COLONNE do
			begin
		  	som := som +tabC[trimestre,i];
			end;
		MoyenneCotisations:= som /NB_COLONNE;
	end ;
//PROCEDURE LISTE DES COTISATION
PROCEDURE ListeDesCotisations;
var som: integer;
begin
 for  colonne:=1 to NB_COLONNE Do
 	 begin
	  som:=0;
	 for ligne:=1 to NB_LIGNE do
	 	 begin
	    som:= som + tabC[ligne,colonne];
		 end;
		writeln('la somme de la cotisation du parcelle ',colonne,' est: ',som);
	 end;
end;

begin
 //LA SAISIE DES DONNES
	for ligne:=1 to NB_LIGNE Do
		begin
	 		for colonne:=1 to NB_COLONNE do
	 			begin
	   			write('veuillez saisir le montant du ',ligne,' trimestre du parcelle ', colonne, ': ');
		 			readln( tabC[ligne,colonne]);
		 		end ;
	  end;
	//SOMMES DE COTISATION
	 for ligne:=1 to NB_LIGNE Do
	 	begin
			som1:= 0;
			for colonne:=1 to NB_COLONNE do
				begin
				  som1 := som1 + tabC[ligne,colonne];
				end;
					writeln('la somme du trimestre ',ligne,' est:',som1 );
		end;
		//SOMMES TOTALE DE COTISATION
	som2 := 0;
	for ligne:=1 to NB_LIGNE Do
		Begin
			for colonne:=1 to NB_COLONNE do
			 Begin
			 	som2 := som2 + tabC[ligne,colonne];
			 end;
		end;
		writeln('la somme totale calcule est : ',som2);
	  write('veuillez saisir le trimeste : ');
		readln(trimestre);
	  AffichageCotisation(trimestre);
    writeln('la plus grande cotisation du trimestre ',trimestre,' est : ',PlusGrandeCotisation(trimestre));
		writeln('la plus petite cotisation du trimestre ' ,trimestre,' est :',PlusPetitcotisation(trimestre));
		writeln('la moyenne de trimestre ',trimestre,' est :',MoyenneCotisations(trimestre):0:2);
		ListeDesCotisations;
end.