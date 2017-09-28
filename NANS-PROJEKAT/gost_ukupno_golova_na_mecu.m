function gost_ukupno_golova_na_mecu( dom,go)

     if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
     end
    
        pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
    %IGRA: GOST UKUPNO GOLOVA NA MECU
		
		
		uk_gol_gost_0_ver = 0;
		uk_gol_gost_01_ver = 0;
		uk_gol_gost_02_ver = 0;
		uk_gol_gost_03_ver = 0;
		uk_gol_gost_1plus_ver = 0;
		uk_gol_gost_12_ver = 0;
		uk_gol_gost_13_ver = 0;
		uk_gol_gost_2plus_ver = 0;
		uk_gol_gost_23_ver = 0;
		uk_gol_gost_3plus_ver = 0;
		uk_gol_gost_4plus_ver = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (y == 0)																%bice ukupno 0
					uk_gol_gost_0_ver = uk_gol_gost_0_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_01_ver = uk_gol_gost_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_02_ver = uk_gol_gost_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_03_ver = uk_gol_gost_03_ver + verov_goal_results{x+2,y+2};
					
					
				elseif (y == 1)															%bice ukupno 1
					uk_gol_gost_01_ver = uk_gol_gost_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_02_ver = uk_gol_gost_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_03_ver = uk_gol_gost_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_1plus_ver = uk_gol_gost_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_12_ver = uk_gol_gost_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_13_ver = uk_gol_gost_13_ver + verov_goal_results{x+2,y+2};
				
				elseif (y == 2)															%bice ukupno 2
					uk_gol_gost_02_ver = uk_gol_gost_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_03_ver = uk_gol_gost_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_1plus_ver = uk_gol_gost_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_12_ver = uk_gol_gost_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_13_ver = uk_gol_gost_13_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_2plus_ver = uk_gol_gost_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_23_ver = uk_gol_gost_23_ver + verov_goal_results{x+2,y+2};
				
				elseif (y == 3)															%bice ukupno 3
					uk_gol_gost_03_ver = uk_gol_gost_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_1plus_ver = uk_gol_gost_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_13_ver = uk_gol_gost_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_2plus_ver = uk_gol_gost_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_23_ver = uk_gol_gost_23_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_3plus_ver = uk_gol_gost_3plus_ver + verov_goal_results{x+2,y+2};
				
				elseif (y == 4)															%bice ukupno 4
					uk_gol_gost_1plus_ver = uk_gol_gost_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_2plus_ver = uk_gol_gost_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_3plus_ver = uk_gol_gost_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_gost_4plus_ver = uk_gol_gost_4plus_ver + verov_goal_results{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_gost_0_kvota = 100 / uk_gol_gost_0_ver; 
		uk_gol_gost_01_kvota = 100 / uk_gol_gost_01_ver;
		uk_gol_gost_02_kvota = 100 / uk_gol_gost_02_ver;
		uk_gol_gost_03_kvota = 100 / uk_gol_gost_03_ver;
		uk_gol_gost_1plus_kvota = 100 / uk_gol_gost_1plus_ver;
		uk_gol_gost_12_kvota = 100 / uk_gol_gost_12_ver;
		uk_gol_gost_13_kvota = 100 / uk_gol_gost_13_ver;
		uk_gol_gost_2plus_kvota = 100 / uk_gol_gost_2plus_ver;
		uk_gol_gost_23_kvota = 100 / uk_gol_gost_23_ver;
		uk_gol_gost_3plus_kvota = 100 / uk_gol_gost_3plus_ver;
		uk_gol_gost_4plus_kvota = 100 / uk_gol_gost_4plus_ver;
		
		
		%ISPIS!!!  
        Gost_ukupno_golova_na_mecu_1=cell(2,6);
        Gost_ukupno_golova_na_mecu_1{1,1}='Broj golova';
        Gost_ukupno_golova_na_mecu_1{1,2}='0';
        Gost_ukupno_golova_na_mecu_1{1,3}='0-1';
        Gost_ukupno_golova_na_mecu_1{1,4}='0-2';
        Gost_ukupno_golova_na_mecu_1{1,5}='0-3';
        Gost_ukupno_golova_na_mecu_1{1,6}='1+'; 
        Gost_ukupno_golova_na_mecu_1{2,1}='Kvota';
        Gost_ukupno_golova_na_mecu_1{2,2}=uk_gol_gost_0_kvota;
        Gost_ukupno_golova_na_mecu_1{2,3}=uk_gol_gost_01_kvota;
        Gost_ukupno_golova_na_mecu_1{2,4}=uk_gol_gost_02_kvota;
        Gost_ukupno_golova_na_mecu_1{2,5}=uk_gol_gost_03_kvota;
        Gost_ukupno_golova_na_mecu_1{2,6}=uk_gol_gost_1plus_kvota;
       
        format bank,Gost_ukupno_golova_na_mecu_1
        
        
        
        Gost_ukupno_golova_na_mecu_2=cell(2,7);
        Gost_ukupno_golova_na_mecu_2{1,1}='Broj golova';
        Gost_ukupno_golova_na_mecu_2{1,2}='1-2';
        Gost_ukupno_golova_na_mecu_2{1,3}='1-3';
        Gost_ukupno_golova_na_mecu_2{1,4}='2+';
        Gost_ukupno_golova_na_mecu_2{1,5}='2-3';
        Gost_ukupno_golova_na_mecu_2{1,6}='3+'; 
        Gost_ukupno_golova_na_mecu_2{1,7}='4+'; 
        Gost_ukupno_golova_na_mecu_2{2,1}='Kvota';
        Gost_ukupno_golova_na_mecu_2{2,2}=uk_gol_gost_12_kvota;
        Gost_ukupno_golova_na_mecu_2{2,3}=uk_gol_gost_13_kvota;
        Gost_ukupno_golova_na_mecu_2{2,4}=uk_gol_gost_2plus_kvota;
        Gost_ukupno_golova_na_mecu_2{2,5}=uk_gol_gost_23_kvota;
        Gost_ukupno_golova_na_mecu_2{2,6}=uk_gol_gost_3plus_kvota;
        Gost_ukupno_golova_na_mecu_2{2,7}=uk_gol_gost_4plus_kvota; 
       
        format bank,Gost_ukupno_golova_na_mecu_2
		
		
	
		else
        
        warning('Uneli ste dva ista tima!')
      end

end