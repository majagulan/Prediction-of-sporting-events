function ukupno_golova_na_1_poluvremenu( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
        
		
		%!!! IGRA: UKUPNO GOLOVA NA MECU 1. POLUVREME !!!
		
		
		uk_gol_0_ver1 = 0;
		uk_gol_01_ver1 = 0;
		uk_gol_02_ver1 = 0;
		uk_gol_1_ver1 = 0;
		uk_gol_1plus_ver1 = 0;
		uk_gol_12_ver1 = 0;
		uk_gol_13_ver1 = 0;
		uk_gol_2_ver1 = 0;
		uk_gol_2plus_ver1 = 0;
		uk_gol_23_ver1 = 0;
		uk_gol_3_ver1 = 0;
		uk_gol_3plus_ver1 = 0;
		uk_gol_4plus_ver1 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
			
				if ( (x == 0) && (y == 0) )																							%bice ukupno 0   
					uk_gol_0_ver1 = uk_gol_0_ver1 +  verov_goal_results1{x+2,y+2};
					uk_gol_01_ver1 = uk_gol_01_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_02_ver1 = uk_gol_02_ver1 + verov_goal_results1{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 1)) || ((x == 1) && (y == 0)) )															%bice ukupno 1
					uk_gol_01_ver1 = uk_gol_01_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_02_ver1 = uk_gol_02_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_1_ver1 = uk_gol_1_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_1plus_ver1 = uk_gol_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_12_ver1 = uk_gol_12_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_13_ver1 = uk_gol_13_ver1 + verov_goal_results1{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 2)) || ((x == 2) && (y == 0)) ||((x == 1) && (y == 1)) )									%bice ukupno 2
					uk_gol_02_ver1 = uk_gol_02_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_1plus_ver1 = uk_gol_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_12_ver1 = uk_gol_12_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_13_ver1 = uk_gol_13_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_2_ver1 = uk_gol_2_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_2plus_ver1 = uk_gol_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_23_ver1 = uk_gol_23_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 3)) || ((x == 3) && (y == 0)) || ((x == 1) && (y == 2)) || ((x == 2) && (y == 1)) )			%bice ukupno 3
					uk_gol_1plus_ver1 = uk_gol_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_13_ver1 = uk_gol_13_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_2plus_ver1 = uk_gol_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_23_ver1 = uk_gol_23_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_3_ver1 = uk_gol_3_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_3plus_ver1 = uk_gol_3plus_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 4)) || ((x == 4) && (y == 0)) || ((x == 1) && (y == 3)) || ((x == 3) && (y == 1)) || ((x == 2) && (y == 2)) )		%bice ukupno 4
					uk_gol_1plus_ver1 = uk_gol_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_2plus_ver1 = uk_gol_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_3plus_ver1 = uk_gol_3plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_4plus_ver1 = uk_gol_4plus_ver1 + verov_goal_results1{x+2,y+2};
					
				elseif ( ((x == 1) && (y == 4)) || ((x == 4) && (y == 1)) || ((x == 2) && (y == 3))|| ((x == 3) && (y == 2)) || ((x == 2) && (y == 4)) || ((x == 4) && (y == 2)) || ((x == 3) && (y == 3)) || ((x == 3) && (y == 4)) || ((x == 4) && (y == 3)) || ((x == 4) && (y == 4)) )								%bice ukupno vise od 4 (sve ostale kombinacije)	
					uk_gol_1plus_ver1 = uk_gol_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_2plus_ver1 = uk_gol_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_3plus_ver1 = uk_gol_3plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_4plus_ver1 = uk_gol_4plus_ver1 + verov_goal_results1{x+2,y+2};
							
				
				end
			end
		end
		
		
		
		uk_gol_0_kvota1 = 100 / uk_gol_0_ver1;
		uk_gol_01_kvota1 = 100 / uk_gol_01_ver1;
		uk_gol_02_kvota1 = 100 / uk_gol_02_ver1;
		uk_gol_1_kvota1 = 100 / uk_gol_1_ver1;
		uk_gol_1plus_kvota1 = 100 / uk_gol_1plus_ver1;
		uk_gol_12_kvota1 = 100 / uk_gol_12_ver1;
		uk_gol_13_kvota1 = 100 / uk_gol_13_ver1;
		uk_gol_2_kvota1 = 100 / uk_gol_2_ver1;
		uk_gol_2plus_kvota1 = 100 / uk_gol_2plus_ver1;
		uk_gol_23_kvota1 = 100 / uk_gol_23_ver1;
		uk_gol_3_kvota1 = 100 / uk_gol_3_ver1;
		uk_gol_3plus_kvota1 = 100 / uk_gol_3plus_ver1;
		uk_gol_4plus_kvota1 = 100 / uk_gol_4plus_ver1;
		
		
		%ISPIS!!!
        Ukupno_golova_na_mecu1_1=cell(2,8);
        Ukupno_golova_na_mecu1_1{1,1}='Broj golova';
        Ukupno_golova_na_mecu1_1{1,2}='I 0';
        Ukupno_golova_na_mecu1_1{1,3}='I 0-1';
        Ukupno_golova_na_mecu1_1{1,4}='I 0-2';
        Ukupno_golova_na_mecu1_1{1,5}='I 1';
        Ukupno_golova_na_mecu1_1{1,6}='I 1+';
        Ukupno_golova_na_mecu1_1{1,7}='I 1-2';
		Ukupno_golova_na_mecu1_1{1,8}='I 1-3';
        Ukupno_golova_na_mecu1_1{2,1}='Kvota';
        Ukupno_golova_na_mecu1_1{2,2}=uk_gol_0_kvota1;
        Ukupno_golova_na_mecu1_1{2,3}=uk_gol_01_kvota1;
        Ukupno_golova_na_mecu1_1{2,4}=uk_gol_02_kvota1;
        Ukupno_golova_na_mecu1_1{2,5}=uk_gol_1_kvota1;
        Ukupno_golova_na_mecu1_1{2,6}=uk_gol_1plus_kvota1;
        Ukupno_golova_na_mecu1_1{2,7}=uk_gol_12_kvota1;
		Ukupno_golova_na_mecu1_1{2,8}=uk_gol_13_kvota1;
        
		format bank,Ukupno_golova_na_mecu1_1
         
        Ukupno_golova_na_mecu1_2=cell(2,7);
        Ukupno_golova_na_mecu1_2{1,1}='Broj golova';
        Ukupno_golova_na_mecu1_2{1,2}='I 2';
        Ukupno_golova_na_mecu1_2{1,3}='I 2+';
        Ukupno_golova_na_mecu1_2{1,4}='I 2-3';
        Ukupno_golova_na_mecu1_2{1,5}='I 3';
        Ukupno_golova_na_mecu1_2{1,6}='I 3+';
		Ukupno_golova_na_mecu1_2{1,7}='I 4+';
        Ukupno_golova_na_mecu1_2{2,1}='Kvota';
        Ukupno_golova_na_mecu1_2{2,2}=uk_gol_2_kvota1;
        Ukupno_golova_na_mecu1_2{2,3}=uk_gol_2plus_kvota1;
        Ukupno_golova_na_mecu1_2{2,4}=uk_gol_23_kvota1;
        Ukupno_golova_na_mecu1_2{2,5}=uk_gol_3_kvota1;
        Ukupno_golova_na_mecu1_2{2,6}=uk_gol_3plus_kvota1;
		Ukupno_golova_na_mecu1_2{2,7}=uk_gol_4plus_kvota1;
       
        
		format bank,Ukupno_golova_na_mecu1_2
     
		
        
		else
        
        warning('Uneli ste dva ista tima!')
    end
end