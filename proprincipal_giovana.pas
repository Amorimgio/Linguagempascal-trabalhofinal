Program Pzim ;
uses mod1,crt;
var
 escolha: integer;
Begin

		 escolha:= 0;     
	 while (escolha < 4) do
   begin
      writeln('  ');
      writeln;
      writeln('----------------------------------------------');
      writeln('SOBRE VETORES:');
      writeln('1- Preencher: com valores não multiplos de 7 e não multiplos de 8');
      writeln('2- Analisar: menor, maior e media' );
      writeln('3- Resultado: intersecção de vetores' );
      writeln('4- Sair');
			writeln('---------------------------------------------'); 
      readln(escolha);
      writeln;
      writeln;
      clrscr;
      case escolha of
        1: naomulti;
        2: cincovalores;
        3: interseccao;
      end;
      
   end;
End.