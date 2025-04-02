 program CalculDeFormule ;
 uses crt;
 function fact (n:integer):int64;
 var i:integer;
 		fact_n:int64;
 Begin
  fact_n:=1;
    for i:=2 to n Do
     Begin
     	 fact_n:=fact_n*i;
     end;
  fact:=fact_n;
 end;
 
 function Calcul (n:integer ; k:integer):real;
  Begin
   Calcul:=(fact(n+k-1)/(fact(k)*fact(n-1)));
  end;

 procedure saisir_nk ( var n:integer ; var k:integer);
 begin
   repeat
 			write('veuillez saisir n:');
			read(n);
				if (n<0) Then
			 		begin
			   		writeln('veuillez saisir n>=0 ');
			 		end;
	 until(n>=0);
	 Repeat
		  write('veuillez saisir k:');
		  read(k);
		    if (k>n) Then
			  begin
					writeln('veuillez saisir k<=n');
				end;
	 until(k<=n)
 end;

 var n,k :integer;
 begin
 saisir_nk(n,K);
 write('le calcule de la formule donne :',Calcul(n,k):0:0);
 end.