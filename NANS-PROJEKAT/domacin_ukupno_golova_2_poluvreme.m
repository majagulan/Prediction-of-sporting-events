function domacin_ukupno_golova_2_poluvreme(dom,go)

    if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
     end
    
        pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
    
	   %!!! IGRA: DOMACIN UKUPNO GOLOVA 2. POLUVREME !!!
		
	
		
		uk_gol_dom_0_ver2 = 0;
		uk_gol_dom_01_ver2 = 0;
		uk_gol_dom_1_ver2 = 0;
		uk_gol_dom_1plus_ver2 = 0;
		uk_gol_dom_12_ver2 = 0;
		uk_gol_dom_2plus_ver2 = 0;
		uk_gol_dom_3plus_ver2 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_dom_0_ver2 = uk_gol_dom_0_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_01_ver2 = uk_gol_dom_01_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_dom_01_ver2 = uk_gol_dom_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_1_ver2 = uk_gol_dom_1_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_12_ver2 = uk_gol_dom_12_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_12_ver2 = uk_gol_dom_12_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_3plus_ver2 = uk_gol_dom_3plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_3plus_ver2 = uk_gol_dom_3plus_ver2 + verov_goal_results2{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_dom_0_kvota2 = 100 / uk_gol_dom_0_ver2; 
		uk_gol_dom_01_kvota2 = 100 / uk_gol_dom_01_ver2;
		uk_gol_dom_1_kvota2 = 100 / uk_gol_dom_1_ver2;
		uk_gol_dom_1plus_kvota2 = 100 / uk_gol_dom_1plus_ver2;
		uk_gol_dom_12_kvota2 = 100 / uk_gol_dom_12_ver2;
		uk_gol_dom_2plus_kvota2 = 100 / uk_gol_dom_2plus_ver2;
		uk_gol_dom_3plus_kvota2 = 100 / uk_gol_dom_3plus_ver2;
		
		
		%ISPIS!!!
		Domacin_ukupno_golova_na_mecu2=cell(2,8);
        Domacin_ukupno_golova_na_mecu2{1,1}='Broj golova';
        Domacin_ukupno_golova_na_mecu2{1,2}='II 0';
        Domacin_ukupno_golova_na_mecu2{1,3}='II 0-1';
        Domacin_ukupno_golova_na_mecu2{1,4}='II 1';
        Domacin_ukupno_golova_na_mecu2{1,5}='II 1+';
        Domacin_ukupno_golova_na_mecu2{1,6}='II 1-2';
		Domacin_ukupno_golova_na_mecu2{1,7}='II 2+';
		Domacin_ukupno_golova_na_mecu2{1,8}='II 3+';
        Domacin_ukupno_golova_na_mecu2{2,1}='Kvota';
        Domacin_ukupno_golova_na_mecu2{2,2}=uk_gol_dom_0_kvota2;
        Domacin_ukupno_golova_na_mecu2{2,3}=uk_gol_dom_01_kvota2;
        Domacin_ukupno_golova_na_mecu2{2,4}=uk_gol_dom_1_kvota2;
        Domacin_ukupno_golova_na_mecu2{2,5}=uk_gol_dom_1plus_kvota2;
        Domacin_ukupno_golova_na_mecu2{2,6}=uk_gol_dom_12_kvota2;
		Domacin_ukupno_golova_na_mecu2{2,7}=uk_gol_dom_2plus_kvota2;
		Domacin_ukupno_golova_na_mecu2{2,8}=uk_gol_dom_3plus_kvota2;
       
        
		format bank,Domacin_ukupno_golova_na_mecu2
        
      
		else
        
        warning('Uneli ste dva ista tima!')
      end
end
