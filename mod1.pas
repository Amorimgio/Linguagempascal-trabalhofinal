unit mod1;
interface

procedure naomulti;
procedure cincovalores;
procedure interseccao;

implementation

  procedure naomulti;
    var Vetor: array[1..50] of integer;
   	var i: integer;
  begin
     for i:=1 to 50 do
     begin
     	Vetor[i]:= i;
   	  if ((Vetor[i] mod 7) <> 0) and ((Vetor[i] mod 10) <> 7) and 
			 ((Vetor[i] mod 8) <> 0) and ((Vetor[i] mod 10) <> 8) then
     		write(Vetor[i],' -  ');
     		
     end;
  end;

	procedure cincovalores;
    var V: array[1..5] of integer;
   	var i: integer;
   	var maior, menor, soma: integer;
    var media:real;
   begin
        writeln('Preencha o Vetor:');
			    for i:=1 to 5 do
             readln(v[i]);
            maior:= (v[1]);
            menor:= (v[1]);
            
          write ('VETOR: ');
           for i:=1 to 5 do
           write(v[i],' ');
         
           soma:=0;
           for i:=1 to 5 do  
           soma := soma+ v[i]; 
           
           for i:=1 to 5 do 
		      begin
             if menor > (v[i]) then
               menor:= (v[i]);
             if maior < (v[i]) then
               maior:= (v[i]); 
              
              media:= (soma/5);
	        end;
		      writeln;
	       	writeln ('MENOR: ',menor, ' E MAIOR: ',maior);
	       	writeln ('A MÉDIA: ',media:0:1);
    end;
 
     Procedure interseccao;
        const n = 5; nNV = 10;
        type 
        Vtor = array[1..n] of integer;
        Vtor3 = array[1..nNV] of integer;
        var 
        v1, v2: Vtor; v3: Vtor3;
        i, j, p, k: integer;
        flag: boolean;

    begin
      write('vetor 1: ');
      for i := 1 to n do 
       read(v1[i]);
        //v1[i]:= random(50); writeln(v1[i]:4);
       write('vetor 2: ');
      for i := 1 to n do 
       read(v2[i]);
       //v2[i]:= random(50); writeln(v2[i]:4); 
    
          writeln;
	       	p := 1; // controla o num de valores presentes no novo vetor  
		      for i:= 1 to n do
		      for j:= 1 to n do
		      if v1[i] = v2[j] then 
		    	begin  // sao iguais        
			      // verificar se v1[i] está em v3.        
			       flag := true;
			       for k := 1 to p-1 do
			          if v3[k] = v1[i] then // v1[i] esta em v3                       
				          	flag := false;
			          if flag then 
								begin // nao achei v1[i] em v3
                  v3[p] := v1[i];
                  p := p + 1; // Incrementamos p
                end;
          end;
					
			   	 if p = 1 then
           writeln('Esses vetores não possuem valores em comum')
           else 
           writeln('A INTERSECÇÃO DOS VETORES É: ');
           for i:= 1 to p - 1 do
           write(v3[i],'  ');	  
   end;
 
      
begin
  
end.