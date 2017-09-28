function domacin_ukupno_golova_na_mecu( dom,go)

    if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
     end
    
        pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
    
        %IGRA: DOMACIN UKUPNO GOLOVA NA MECU
		
		uk_gol_dom_0_ver = 0;
		uk_gol_dom_01_ver = 0;
		uk_gol_dom_02_ver = 0;
		uk_gol_dom_03_ver = 0;
		uk_gol_dom_1plus_ver = 0;
		uk_gol_dom_12_ver = 0;
		uk_gol_dom_13_ver = 0;
		uk_gol_dom_2plus_ver = 0;
		uk_gol_dom_23_ver = 0;
		uk_gol_dom_3plus_ver = 0;
		uk_gol_dom_4plus_ver = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_dom_0_ver = uk_gol_dom_0_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_01_ver = uk_gol_dom_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_02_ver = uk_gol_dom_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_03_ver = uk_gol_dom_03_ver + verov_goal_results{x+2,y+2};
					
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_dom_01_ver = uk_gol_dom_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_02_ver = uk_gol_dom_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_03_ver = uk_gol_dom_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_1plus_ver = uk_gol_dom_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_12_ver = uk_gol_dom_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_13_ver = uk_gol_dom_13_ver + verov_goal_results{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
					uk_gol_dom_02_ver = uk_gol_dom_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_03_ver = uk_gol_dom_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_1plus_ver = uk_gol_dom_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_12_ver = uk_gol_dom_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_13_ver = uk_gol_dom_13_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_2plus_ver = uk_gol_dom_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_23_ver = uk_gol_dom_23_ver + verov_goal_results{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_dom_03_ver = uk_gol_dom_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_1plus_ver = uk_gol_dom_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_13_ver = uk_gol_dom_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_2plus_ver = uk_gol_dom_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_23_ver = uk_gol_dom_23_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_3plus_ver = uk_gol_dom_3plus_ver + verov_goal_results{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_dom_1plus_ver = uk_gol_dom_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_2plus_ver = uk_gol_dom_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_3plus_ver = uk_gol_dom_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_dom_4plus_ver = uk_gol_dom_4plus_ver + verov_goal_results{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_dom_0_kvota = 100 / uk_gol_dom_0_ver; 
		uk_gol_dom_01_kvota = 100 / uk_gol_dom_01_ver;
		uk_gol_dom_02_kvota = 100 / uk_gol_dom_02_ver;
		uk_gol_dom_03_kvota = 100 / uk_gol_dom_03_ver;
		uk_gol_dom_1plus_kvota = 100 / uk_gol_dom_1plus_ver;
		uk_gol_dom_12_kvota = 100 / uk_gol_dom_12_ver;
		uk_gol_dom_13_kvota = 100 / uk_gol_dom_13_ver;
		uk_gol_dom_2plus_kvota = 100 / uk_gol_dom_2plus_ver;
		uk_gol_dom_23_kvota = 100 / uk_gol_dom_23_ver;
		uk_gol_dom_3plus_kvota = 100 / uk_gol_dom_3plus_ver;
		uk_gol_dom_4plus_kvota = 100 / uk_gol_dom_4plus_ver;
		
		
		%ISPIS!!!																
		Domacin_ukupno_golova_na_mecu_1=cell(2,6);
        Domacin_ukupno_golova_na_mecu_1{1,1}='Broj golova';
        Domacin_ukupno_golova_na_mecu_1{1,2}='0';
        Domacin_ukupno_golova_na_mecu_1{1,3}='0-1';
        Domacin_ukupno_golova_na_mecu_1{1,4}='0-2';
        Domacin_ukupno_golova_na_mecu_1{1,5}='0-3';
        Domacin_ukupno_golova_na_mecu_1{1,6}='1+';
        Domacin_ukupno_golova_na_mecu_1{2,1}='Kvota';
        Domacin_ukupno_golova_na_mecu_1{2,2}=uk_gol_dom_0_kvota;
        Domacin_ukupno_golova_na_mecu_1{2,3}=uk_gol_dom_01_kvota;
        Domacin_ukupno_golova_na_mecu_1{2,4}=uk_gol_dom_02_kvota;
        Domacin_ukupno_golova_na_mecu_1{2,5}=uk_gol_dom_03_kvota;
        Domacin_ukupno_golova_na_mecu_1{2,6}=uk_gol_dom_1plus_kvota;
       
        
		format bank,Domacin_ukupno_golova_na_mecu_1
        
              
        Domacin_ukupno_golova_na_mecu_2=cell(2,7);
        Domacin_ukupno_golova_na_mecu_2{1,1}='Broj golova';
        Domacin_ukupno_golova_na_mecu_2{1,2}='1-2';
        Domacin_ukupno_golova_na_mecu_2{1,3}='1-3';
        Domacin_ukupno_golova_na_mecu_2{1,4}='2+';
        Domacin_ukupno_golova_na_mecu_2{1,5}='2-3';
        Domacin_ukupno_golova_na_mecu_2{1,6}='3+';
        Domacin_ukupno_golova_na_mecu_2{1,7}='4+';
        Domacin_ukupno_golova_na_mecu_2{2,1}='Kvota';
        Domacin_ukupno_golova_na_mecu_2{2,2}=uk_gol_dom_12_kvota;
        Domacin_ukupno_golova_na_mecu_2{2,3}=uk_gol_dom_13_kvota;
        Domacin_ukupno_golova_na_mecu_2{2,4}=uk_gol_dom_2plus_kvota;
        Domacin_ukupno_golova_na_mecu_2{2,5}=uk_gol_dom_23_kvota;
        Domacin_ukupno_golova_na_mecu_2{2,6}=uk_gol_dom_3plus_kvota;
        Domacin_ukupno_golova_na_mecu_2{2,7}=uk_gol_dom_4plus_kvota;
        
		format bank,Domacin_ukupno_golova_na_mecu_2
		
		else
        
        warning('Uneli ste dva ista tima!')
      end
end
