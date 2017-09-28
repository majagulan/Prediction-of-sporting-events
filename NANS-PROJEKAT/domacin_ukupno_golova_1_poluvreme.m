function domacin_ukupno_golova_1_poluvreme( dom,go)

    if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
     end
    
        pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
    
	%!!! IGRA: DOMACIN UKUPNO GOLOVA 1. POLUVREME !!!
		
		
		uk_gol_dom_0_ver1 = 0;
		uk_gol_dom_01_ver1 = 0;
		uk_gol_dom_1_ver1 = 0;
		uk_gol_dom_1plus_ver1 = 0;
		uk_gol_dom_12_ver1 = 0;
		uk_gol_dom_2plus_ver1 = 0;
		uk_gol_dom_3plus_ver1 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_dom_0_ver1 = uk_gol_dom_0_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_01_ver1 = uk_gol_dom_01_ver1 + verov_goal_results1{x+2,y+2};
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_dom_01_ver1 = uk_gol_dom_01_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_1_ver1 = uk_gol_dom_1_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_1plus_ver1 = uk_gol_dom_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_12_ver1 = uk_gol_dom_12_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
					uk_gol_dom_1plus_ver1 = uk_gol_dom_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_12_ver1 = uk_gol_dom_12_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_2plus_ver1 = uk_gol_dom_2plus_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_dom_1plus_ver1 = uk_gol_dom_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_2plus_ver1 = uk_gol_dom_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_3plus_ver1 = uk_gol_dom_3plus_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_dom_1plus_ver1 = uk_gol_dom_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_2plus_ver1 = uk_gol_dom_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_3plus_ver1 = uk_gol_dom_3plus_ver1 + verov_goal_results1{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_dom_0_kvota1 = 100 / uk_gol_dom_0_ver1; 
		uk_gol_dom_01_kvota1 = 100 / uk_gol_dom_01_ver1;
		uk_gol_dom_1_kvota1 = 100 / uk_gol_dom_1_ver1;
		uk_gol_dom_1plus_kvota1 = 100 / uk_gol_dom_1plus_ver1;
		uk_gol_dom_12_kvota1 = 100 / uk_gol_dom_12_ver1;
		uk_gol_dom_2plus_kvota1 = 100 / uk_gol_dom_2plus_ver1;
		uk_gol_dom_3plus_kvota1 = 100 / uk_gol_dom_3plus_ver1;
		
		
		%ISPIS!!!
		Domacin_ukupno_golova_na_mecu1=cell(2,8);
        Domacin_ukupno_golova_na_mecu1{1,1}='Broj golova';
        Domacin_ukupno_golova_na_mecu1{1,2}='I 0';
        Domacin_ukupno_golova_na_mecu1{1,3}='I 0-1';
        Domacin_ukupno_golova_na_mecu1{1,4}='I 1';
        Domacin_ukupno_golova_na_mecu1{1,5}='I 1+';
        Domacin_ukupno_golova_na_mecu1{1,6}='I 1-2';
		Domacin_ukupno_golova_na_mecu1{1,7}='I 2+';
		Domacin_ukupno_golova_na_mecu1{1,8}='I 3+';
        Domacin_ukupno_golova_na_mecu1{2,1}='Kvota';
        Domacin_ukupno_golova_na_mecu1{2,2}=uk_gol_dom_0_kvota1;
        Domacin_ukupno_golova_na_mecu1{2,3}=uk_gol_dom_01_kvota1;
        Domacin_ukupno_golova_na_mecu1{2,4}=uk_gol_dom_1_kvota1;
        Domacin_ukupno_golova_na_mecu1{2,5}=uk_gol_dom_1plus_kvota1;
        Domacin_ukupno_golova_na_mecu1{2,6}=uk_gol_dom_12_kvota1;
		Domacin_ukupno_golova_na_mecu1{2,7}=uk_gol_dom_2plus_kvota1;
		Domacin_ukupno_golova_na_mecu1{2,8}=uk_gol_dom_3plus_kvota1;
       
        
		format bank,Domacin_ukupno_golova_na_mecu1
		
        
		else
        
        warning('Uneli ste dva ista tima!')
      end
end
