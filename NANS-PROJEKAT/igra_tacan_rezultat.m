function igra_tacan_rezultat( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
        
        %IGRA: TACAN REZULTAT
		
        pomocna_matrica=cell(6,6);
        pomocna_matrica{1,1}='H/A';
        pomocna_matrica{1,2}='0';
        pomocna_matrica{1,3}='1';
        pomocna_matrica{1,4}='2';
        pomocna_matrica{1,5}='3';
        pomocna_matrica{1,6}='4';
        pomocna_matrica{2,1}='0';
        pomocna_matrica{2,2}=100;
        pomocna_matrica{2,3}=100;
        pomocna_matrica{2,4}=100;
        pomocna_matrica{2,5}=100;
        pomocna_matrica{2,6}=100;
        pomocna_matrica{3,1}='1';
        pomocna_matrica{3,2}=100;
        pomocna_matrica{3,3}=100;
        pomocna_matrica{3,4}=100;
        pomocna_matrica{3,5}=100;
        pomocna_matrica{3,6}=100;
        pomocna_matrica{4,1}='2';
        pomocna_matrica{4,2}=100;
        pomocna_matrica{4,3}=100;
        pomocna_matrica{4,4}=100;
        pomocna_matrica{4,5}=100;
        pomocna_matrica{4,6}=100;
        pomocna_matrica{5,1}='3';
        pomocna_matrica{5,2}=100;
        pomocna_matrica{5,3}=100;
        pomocna_matrica{5,4}=100;
        pomocna_matrica{5,5}=100;
        pomocna_matrica{5,6}=100;
        pomocna_matrica{6,1}='4';
        pomocna_matrica{6,2}=100;
        pomocna_matrica{6,3}=100;
        pomocna_matrica{6,4}=100;
        pomocna_matrica{6,5}=100;
        pomocna_matrica{6,6}=100;
		
        	
        kvote_tacan_rezultat = pomocna_matrica;
        kvote_tacan_rezultat1 = pomocna_matrica;	
        kvote_tacan_rezultat2 = pomocna_matrica;
		
        
		%CELA UTAKMICA
		
		for x = 2:6   %vrste home
			for y = 2:6   %kolone away                                               
				kvote_tacan_rezultat{x,y} = pomocna_matrica{x,y} ./ verov_goal_results{x,y}; 		
			end
		end
		
		
		%!!! 1. POLUVREME !!!
		
		for x = 2:6   %vrste home
			for y = 2:6   %kolone away                                               
				kvote_tacan_rezultat1{x,y} = pomocna_matrica{x,y} ./ verov_goal_results1{x,y}; 		
			end
		end
		
		
		%!!! 2. POLUVREME !!!
		
		for x = 2:6   %vrste home
			for y = 2:6   %kolone away                                               
				kvote_tacan_rezultat2{x,y} = pomocna_matrica{x,y} ./ verov_goal_results2{x,y}; 		
			end
		end
		

		%ISPIS!!!
		format bank,kvote_tacan_rezultat
		format bank,kvote_tacan_rezultat1
		format bank,kvote_tacan_rezultat2
        	
	else
        
        warning('Uneli ste dva ista tima!')
    end
end