Program REMISE;
Uses crt;
Var
  commande, rem, Mth : real ;
 //Mth=montant hors taxes , rem=remise
Begin
	Write('veillez saisir le prix de  votre commande ');
	readln(commande);
	If (commande>=1000000) then                                                
		begin
  	rem:=(commande*(7/100));
  	Mth:=(commande*(1+(7/100)));
	   Writeln('la remise est:',rem:0:2,' et le montant hors taxes est:', Mth:0:2);
		end
		 else if (commande>=500000) and (commande<=1000000) then
				 Begin
	  	     rem:=(commande*(5/100));
			     Mth:=(commande*(1+(5/100)));
			      write('la remise est ',rem:0:2,' et le montant hors tases est ',Mth:0:2);
			   end
			 else if (commande>=50000) and (commande<=500000) then
					 begin
			       rem:=(commande*(2/100));
				     Mth:=(commande*(1+(2/100)));
			        write('la remise est ',rem:0:2,' et le montant hors tases est ',Mth:0:2);
					 end
				 else if(commande<50000) then
						  begin
					     rem:=0 ;
   		         write('il n''y pas de remise ');
		          end;
End.