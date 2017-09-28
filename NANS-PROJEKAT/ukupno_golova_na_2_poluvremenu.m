function ukupno_golova_na_2_poluvremenu( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
        
		
		%!!! IGRA: UKUPNO GOLOVA NA MECU 2. POLUVREME !!!
		
		
		uk_gol_0_ver2 = 0;
		uk_gol_01_ver2 = 0;
		uk_gol_02_ver2 = 0;
		uk_gol_1_ver2 = 0;
		uk_gol_1plus_ver2 = 0;
		uk_gol_12_ver2 = 0;
		uk_gol_13_ver2 = 0;
		uk_gol_2_ver2 = 0;
		uk_gol_2plus_ver2 = 0;
		uk_gol_23_ver2 = 0;
		uk_gol_3_ver2 = 0;
		uk_gol_3plus_ver2 = 0;
		uk_gol_4plus_ver2 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
			
				if ( (x == 0) && (y == 0) )																							%bice ukupno 0   
					uk_gol_0_ver2 = uk_gol_0_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_01_ver2 = uk_gol_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_02_ver2 = uk_gol_02_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 1)) || ((x == 1) && (y == 0)) )															%bice ukupno 1
					uk_gol_01_ver2 = uk_gol_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_02_ver2 = uk_gol_02_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_1_ver2 = uk_gol_1_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_1plus_ver2 = uk_gol_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_12_ver2 = uk_gol_12_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_13_ver2 = uk_gol_13_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 2)) || ((x == 2) && (y == 0)) ||((x == 1) && (y == 1)) )									%bice ukupno 2
					uk_gol_02_ver2 = uk_gol_02_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_1plus_ver2 = uk_gol_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_12_ver2 = uk_gol_12_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_13_ver2 = uk_gol_13_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_2_ver2 = uk_gol_2_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_2plus_ver2 = uk_gol_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_23_ver2 = uk_gol_23_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 3)) || ((x == 3) && (y == 0)) || ((x == 1) && (y == 2)) || ((x == 2) && (y == 1)) )			%bice ukupno 3
					uk_gol_1plus_ver2 = uk_gol_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_13_ver2 = uk_gol_13_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_2plus_ver2 = uk_gol_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_23_ver2 = uk_gol_23_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_3_ver2 = uk_gol_3_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_3plus_ver2 = uk_gol_3plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 4)) || ((x == 4) && (y == 0)) || ((x == 1) && (y == 3)) || ((x == 3) && (y == 1)) || ((x == 2) && (y == 2)) )		%bice ukupno 4
					uk_gol_1plus_ver2 = uk_gol_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_2plus_ver2 = uk_gol_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_3plus_ver2 = uk_gol_3plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_4plus_ver2 = uk_gol_4plus_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif ( ((x == 1) && (y == 4)) || ((x == 4) && (y == 1)) || ((x == 2) && (y == 3)) || ((x == 3) && (y == 2)) || ((x == 2) && (y == 4)) || ((x == 4) && (y == 2)) || ((x == 3) && (y == 3)) || ((x == 3) && (y == 4)) || ((x == 4) && (y == 3)) || ((x == 4) && (y == 4)) )								%bice ukupno vise od 4 (sve ostale kombinacije)	
					uk_gol_1plus_ver2 = uk_gol_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_2plus_ver2 = uk_gol_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_3plus_ver2 = uk_gol_3plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_4plus_ver2 = uk_gol_4plus_ver2 + verov_goal_results2{x+2,y+2};
							
				
				end
			end
		end
		
		
		
		uk_gol_0_kvota2 = 100 / uk_gol_0_ver2;
		uk_gol_01_kvota2 = 100 / uk_gol_01_ver2;
		uk_gol_02_kvota2 = 100 / uk_gol_02_ver2;
		uk_gol_1_kvota2 = 100 / uk_gol_1_ver2;
		uk_gol_1plus_kvota2 = 100 / uk_gol_1plus_ver2;
		uk_gol_12_kvota2 = 100 / uk_gol_12_ver2;
		uk_gol_13_kvota2 = 100 / uk_gol_13_ver2;
		uk_gol_2_kvota2 = 100 / uk_gol_2_ver2;
		uk_gol_2plus_kvota2 = 100 / uk_gol_2plus_ver2;
		uk_gol_23_kvota2 = 100 / uk_gol_23_ver2;
		uk_gol_3_kvota2 = 100 / uk_gol_3_ver2;
		uk_gol_3plus_kvota2 = 100 / uk_gol_3plus_ver2;
		uk_gol_4plus_kvota2 = 100 / uk_gol_4plus_ver2;
		
		
		%ISPIS!!!
        Ukupno_golova_na_mecu2_1=cell(2,8);
        Ukupno_golova_na_mecu2_1{1,1}='Broj golova';
        Ukupno_golova_na_mecu2_1{1,2}='II 0';
        Ukupno_golova_na_mecu2_1{1,3}='II 0-1';
        Ukupno_golova_na_mecu2_1{1,4}='II 0-2';
        Ukupno_golova_na_mecu2_1{1,5}='II 1';
        Ukupno_golova_na_mecu2_1{1,6}='II 1+';
        Ukupno_golova_na_mecu2_1{1,7}='II 1-2';
		Ukupno_golova_na_mecu2_1{1,8}='II 1-3';
        Ukupno_golova_na_mecu2_1{2,1}='Kvota';
        Ukupno_golova_na_mecu2_1{2,2}=uk_gol_0_kvota2;
        Ukupno_golova_na_mecu2_1{2,3}=uk_gol_01_kvota2;
        Ukupno_golova_na_mecu2_1{2,4}=uk_gol_02_kvota2;
        Ukupno_golova_na_mecu2_1{2,5}=uk_gol_1_kvota2;
        Ukupno_golova_na_mecu2_1{2,6}=uk_gol_1plus_kvota2;
        Ukupno_golova_na_mecu2_1{2,7}=uk_gol_12_kvota2;
		Ukupno_golova_na_mecu2_1{2,8}=uk_gol_13_kvota2;
        
		format bank,Ukupno_golova_na_mecu2_1
         
        Ukupno_golova_na_mecu2_2=cell(2,7);
        Ukupno_golova_na_mecu2_2{1,1}='Broj golova';
        Ukupno_golova_na_mecu2_2{1,2}='II 2';
        Ukupno_golova_na_mecu2_2{1,3}='II 2+';
        Ukupno_golova_na_mecu2_2{1,4}='II 2-3';
        Ukupno_golova_na_mecu2_2{1,5}='II 3';
        Ukupno_golova_na_mecu2_2{1,6}='II 3+';
		Ukupno_golova_na_mecu2_2{1,7}='II 4+';
        Ukupno_golova_na_mecu2_2{2,1}='Kvota';
        Ukupno_golova_na_mecu2_2{2,2}=uk_gol_2_kvota2;
        Ukupno_golova_na_mecu2_2{2,3}=uk_gol_2plus_kvota2;
        Ukupno_golova_na_mecu2_2{2,4}=uk_gol_23_kvota2;
        Ukupno_golova_na_mecu2_2{2,5}=uk_gol_3_kvota2;
        Ukupno_golova_na_mecu2_2{2,6}=uk_gol_3plus_kvota2;
		Ukupno_golova_na_mecu2_2{2,7}=uk_gol_4plus_kvota2;
       
        
		format bank,Ukupno_golova_na_mecu2_2
		
        
		else
        
        warning('Uneli ste dva ista tima!')
    end
end