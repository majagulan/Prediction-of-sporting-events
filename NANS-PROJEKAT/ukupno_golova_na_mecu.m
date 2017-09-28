function ukupno_golova_na_mecu( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
        
		


        %IGRA: UKUPNO GOLOVA NA MECU
		
		uk_gol_01_ver = 0;
		uk_gol_02_ver = 0;
		uk_gol_03_ver = 0;
		uk_gol_04_ver = 0;
		uk_gol_1_ver = 0;
		uk_gol_1plus_ver = 0;
		uk_gol_12_ver = 0;
		uk_gol_13_ver = 0;
		uk_gol_14_ver = 0;
		uk_gol_15_ver = 0;
		uk_gol_16_ver = 0;
		uk_gol_2_ver = 0;
		uk_gol_2plus_ver = 0;
		uk_gol_23_ver = 0;
		uk_gol_24_ver = 0;
		uk_gol_25_ver = 0;
		uk_gol_26_ver = 0;
		uk_gol_3_ver = 0;
		uk_gol_3plus_ver = 0;
		uk_gol_34_ver = 0;
		uk_gol_35_ver = 0;
		uk_gol_36_ver = 0;
		uk_gol_4_ver = 0;
		uk_gol_4plus_ver = 0;
		uk_gol_45_ver = 0;
		uk_gol_46_ver = 0;
		uk_gol_5_ver = 0;
		uk_gol_5plus_ver = 0;
		uk_gol_6plus_ver = 0;
		uk_gol_7plus_ver = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
			
				if ( (x == 0) && (y == 0) )																							%bice ukupno 0   
					uk_gol_01_ver = uk_gol_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_02_ver = uk_gol_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_03_ver = uk_gol_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_04_ver = uk_gol_04_ver + verov_goal_results{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 1)) || ((x == 1) && (y == 0)) )															%bice ukupno 1
					uk_gol_01_ver = uk_gol_01_ver + verov_goal_results{x+2,y+2};
					uk_gol_02_ver = uk_gol_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_03_ver = uk_gol_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_04_ver = uk_gol_04_ver + verov_goal_results{x+2,y+2};
					uk_gol_1_ver = uk_gol_1_ver + verov_goal_results{x+2,y+2};
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_12_ver = uk_gol_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_13_ver = uk_gol_13_ver + verov_goal_results{x+2,y+2};
					uk_gol_14_ver = uk_gol_14_ver + verov_goal_results{x+2,y+2};
					uk_gol_15_ver = uk_gol_15_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					
				elseif ( ((x == 0) && (y == 2)) || ((x == 2) && (y == 0)) ||((x == 1) && (y == 1)) )									%bice ukupno 2
					uk_gol_02_ver = uk_gol_02_ver + verov_goal_results{x+2,y+2};
					uk_gol_03_ver = uk_gol_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_04_ver = uk_gol_04_ver + verov_goal_results{x+2,y+2};
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_12_ver = uk_gol_12_ver + verov_goal_results{x+2,y+2};
					uk_gol_13_ver = uk_gol_13_ver + verov_goal_results{x+2,y+2};
					uk_gol_14_ver = uk_gol_14_ver + verov_goal_results{x+2,y+2};
					uk_gol_15_ver = uk_gol_15_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					uk_gol_2_ver = uk_gol_2_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_23_ver = uk_gol_23_ver + verov_goal_results{x+2,y+2};
					uk_gol_24_ver = uk_gol_24_ver + verov_goal_results{x+2,y+2};
					uk_gol_25_ver = uk_gol_25_ver + verov_goal_results{x+2,y+2};
					uk_gol_26_ver = uk_gol_26_ver + verov_goal_results{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 3)) || ((x == 3) && (y == 0)) || ((x == 1) && (y == 2)) || ((x == 2) && (y == 1)) )			%bice ukupno 3
					uk_gol_03_ver = uk_gol_03_ver + verov_goal_results{x+2,y+2};
					uk_gol_04_ver = uk_gol_04_ver + verov_goal_results{x+2,y+2};
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_13_ver = uk_gol_13_ver + verov_goal_results{x+2,y+2};
					uk_gol_14_ver = uk_gol_14_ver + verov_goal_results{x+2,y+2};
					uk_gol_15_ver = uk_gol_15_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_23_ver = uk_gol_23_ver + verov_goal_results{x+2,y+2};
					uk_gol_24_ver = uk_gol_24_ver + verov_goal_results{x+2,y+2};
					uk_gol_25_ver = uk_gol_25_ver + verov_goal_results{x+2,y+2};
					uk_gol_26_ver = uk_gol_26_ver + verov_goal_results{x+2,y+2};
					uk_gol_3_ver = uk_gol_3_ver + verov_goal_results{x+2,y+2};
					uk_gol_3plus_ver = uk_gol_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_34_ver = uk_gol_34_ver + verov_goal_results{x+2,y+2};
					uk_gol_35_ver = uk_gol_35_ver + verov_goal_results{x+2,y+2};
					uk_gol_36_ver = uk_gol_36_ver + verov_goal_results{x+2,y+2};
				
				elseif ( ((x == 0) && (y == 4)) || ((x == 4) && (y == 0)) || ((x == 1) && (y == 3)) || ((x == 3) && (y == 1)) || ((x == 2) && (y == 2)) )		%bice ukupno 4
					uk_gol_04_ver = uk_gol_04_ver + verov_goal_results{x+2,y+2};
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_14_ver = uk_gol_14_ver + verov_goal_results{x+2,y+2};
					uk_gol_15_ver = uk_gol_15_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_24_ver = uk_gol_24_ver + verov_goal_results{x+2,y+2};
					uk_gol_25_ver = uk_gol_25_ver + verov_goal_results{x+2,y+2};
					uk_gol_26_ver = uk_gol_26_ver + verov_goal_results{x+2,y+2};
					uk_gol_3plus_ver = uk_gol_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_34_ver = uk_gol_34_ver + verov_goal_results{x+2,y+2};
					uk_gol_35_ver = uk_gol_35_ver + verov_goal_results{x+2,y+2};
					uk_gol_36_ver = uk_gol_36_ver + verov_goal_results{x+2,y+2};
					uk_gol_4_ver = uk_gol_4_ver + verov_goal_results{x+2,y+2};
					uk_gol_4plus_ver = uk_gol_4plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_45_ver = uk_gol_45_ver + verov_goal_results{x+2,y+2};
					uk_gol_46_ver = uk_gol_46_ver + verov_goal_results{x+2,y+2};
                    
				%0-5 ne nudimo kvotu 4:4
				elseif ( ((x == 1) && (y == 4)) || ((x == 4) && (y == 1)) || ((x == 2) && (y == 3)) || ((x == 3) && (y == 2)) )		%bice ukupno 5
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_15_ver = uk_gol_15_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_25_ver = uk_gol_25_ver + verov_goal_results{x+2,y+2};
					uk_gol_26_ver = uk_gol_26_ver + verov_goal_results{x+2,y+2};
					uk_gol_3plus_ver = uk_gol_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_35_ver = uk_gol_35_ver + verov_goal_results{x+2,y+2};
					uk_gol_36_ver = uk_gol_36_ver + verov_goal_results{x+2,y+2};
					uk_gol_4plus_ver = uk_gol_4plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_45_ver = uk_gol_45_ver + verov_goal_results{x+2,y+2};
					uk_gol_46_ver = uk_gol_46_ver + verov_goal_results{x+2,y+2};
					uk_gol_5_ver = uk_gol_5_ver + verov_goal_results{x+2,y+2};
					uk_gol_5plus_ver = uk_gol_5plus_ver + verov_goal_results{x+2,y+2};
				
				elseif ( ((x == 2) && (y == 4)) || ((x == 4) && (y == 2)) || ((x == 3) && (y == 3)) )									%bice ukupno 6
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_16_ver = uk_gol_16_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_26_ver = uk_gol_26_ver + verov_goal_results{x+2,y+2};
					uk_gol_3plus_ver = uk_gol_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_36_ver = uk_gol_36_ver + verov_goal_results{x+2,y+2};
					uk_gol_4plus_ver = uk_gol_4plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_46_ver = uk_gol_46_ver + verov_goal_results{x+2,y+2};
					uk_gol_5plus_ver = uk_gol_5plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_6plus_ver = uk_gol_6plus_ver + verov_goal_results{x+2,y+2};
				
				elseif ( ((x == 3) && (y == 4)) || ((x == 4) && (y == 3)) || ((x == 4) && (y == 4)) )								    %bice ukupno 7 ili 8
					uk_gol_1plus_ver = uk_gol_1plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_2plus_ver = uk_gol_2plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_3plus_ver = uk_gol_3plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_4plus_ver = uk_gol_4plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_5plus_ver = uk_gol_5plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_6plus_ver = uk_gol_6plus_ver + verov_goal_results{x+2,y+2};
					uk_gol_7plus_ver = uk_gol_7plus_ver + verov_goal_results{x+2,y+2};
							
				
				end
			end
		end
		
		
		
		uk_gol_01_kvota = 100 / uk_gol_01_ver;
		uk_gol_02_kvota = 100 / uk_gol_02_ver;
		uk_gol_03_kvota = 100 / uk_gol_03_ver;
		uk_gol_04_kvota = 100 / uk_gol_04_ver;
		uk_gol_1_kvota = 100 / uk_gol_1_ver;
		uk_gol_1plus_kvota = 100 / uk_gol_1plus_ver;
		uk_gol_12_kvota = 100 / uk_gol_12_ver;
		uk_gol_13_kvota = 100 / uk_gol_13_ver;
		uk_gol_14_kvota = 100 / uk_gol_14_ver;
		uk_gol_15_kvota = 100 / uk_gol_15_ver;
		uk_gol_16_kvota = 100 / uk_gol_16_ver;
		uk_gol_2_kvota = 100 / uk_gol_2_ver;
		uk_gol_2plus_kvota = 100 / uk_gol_2plus_ver;
		uk_gol_23_kvota = 100 / uk_gol_23_ver;
		uk_gol_24_kvota = 100 / uk_gol_24_ver;
		uk_gol_25_kvota = 100 / uk_gol_25_ver;
		uk_gol_26_kvota = 100 / uk_gol_26_ver;
		uk_gol_3_kvota = 100 / uk_gol_3_ver;
		uk_gol_3plus_kvota = 100 / uk_gol_3plus_ver;
		uk_gol_34_kvota = 100 / uk_gol_34_ver;
		uk_gol_35_kvota = 100 / uk_gol_35_ver;
		uk_gol_36_kvota = 100 / uk_gol_36_ver;
		uk_gol_4_kvota = 100 / uk_gol_4_ver;
		uk_gol_4plus_kvota = 100 / uk_gol_4plus_ver;
		uk_gol_45_kvota = 100 / uk_gol_45_ver;
		uk_gol_46_kvota = 100 / uk_gol_46_ver;
		uk_gol_5_kvota = 100 / uk_gol_5_ver;
		uk_gol_5plus_kvota = 100 / uk_gol_5plus_ver;
		uk_gol_6plus_kvota = 100 / uk_gol_6plus_ver;
		uk_gol_7plus_kvota = 100 / uk_gol_7plus_ver;
		
		
		%ISPIS!!!
        Ukupno_golova_na_mecu_1=cell(2,7);
        Ukupno_golova_na_mecu_1{1,1}='Broj golova';
        Ukupno_golova_na_mecu_1{1,2}='0-1';
        Ukupno_golova_na_mecu_1{1,3}='0-2';
        Ukupno_golova_na_mecu_1{1,4}='0-3';
        Ukupno_golova_na_mecu_1{1,5}='0-4';
        Ukupno_golova_na_mecu_1{1,6}='1';
        Ukupno_golova_na_mecu_1{1,7}='1+';
        Ukupno_golova_na_mecu_1{2,1}='Kvota';
        Ukupno_golova_na_mecu_1{2,2}=uk_gol_01_kvota;
        Ukupno_golova_na_mecu_1{2,3}=uk_gol_02_kvota;
        Ukupno_golova_na_mecu_1{2,4}=uk_gol_03_kvota;
        Ukupno_golova_na_mecu_1{2,5}=uk_gol_04_kvota;
        Ukupno_golova_na_mecu_1{2,6}=uk_gol_1_kvota;
        Ukupno_golova_na_mecu_1{2,7}=uk_gol_1plus_kvota;
        
		format bank,Ukupno_golova_na_mecu_1
         
        Ukupno_golova_na_mecu_2=cell(2,6);
        Ukupno_golova_na_mecu_2{1,1}='Broj golova';
        Ukupno_golova_na_mecu_2{1,2}='1-2';
        Ukupno_golova_na_mecu_2{1,3}='1-3';
        Ukupno_golova_na_mecu_2{1,4}='1-4';
        Ukupno_golova_na_mecu_2{1,5}='1-5';
        Ukupno_golova_na_mecu_2{1,6}='1-6';
        Ukupno_golova_na_mecu_2{2,1}='Kvota';
        Ukupno_golova_na_mecu_2{2,2}=uk_gol_12_kvota;
        Ukupno_golova_na_mecu_2{2,3}=uk_gol_13_kvota;
        Ukupno_golova_na_mecu_2{2,4}=uk_gol_14_kvota;
        Ukupno_golova_na_mecu_2{2,5}=uk_gol_15_kvota;
        Ukupno_golova_na_mecu_2{2,6}=uk_gol_16_kvota;
       
        
		format bank,Ukupno_golova_na_mecu_2
        
        
        Ukupno_golova_na_mecu_3=cell(2,7);
        Ukupno_golova_na_mecu_3{1,1}='Broj golova';
        Ukupno_golova_na_mecu_3{1,2}='2';
        Ukupno_golova_na_mecu_3{1,3}='2+';
        Ukupno_golova_na_mecu_3{1,4}='2-3';
        Ukupno_golova_na_mecu_3{1,5}='2-4';
        Ukupno_golova_na_mecu_3{1,6}='2-5';
        Ukupno_golova_na_mecu_3{1,7}='2-6';
        Ukupno_golova_na_mecu_3{2,1}='Kvota';
        Ukupno_golova_na_mecu_3{2,2}=uk_gol_2_kvota;
        Ukupno_golova_na_mecu_3{2,3}=uk_gol_2plus_kvota;
        Ukupno_golova_na_mecu_3{2,4}=uk_gol_23_kvota;
        Ukupno_golova_na_mecu_3{2,5}=uk_gol_24_kvota;
        Ukupno_golova_na_mecu_3{2,6}=uk_gol_25_kvota;
        Ukupno_golova_na_mecu_3{2,7}=uk_gol_26_kvota;
        
        
        format bank,Ukupno_golova_na_mecu_3
        
        
        Ukupno_golova_na_mecu_4=cell(2,6);
        Ukupno_golova_na_mecu_4{1,1}='Broj golova';
        Ukupno_golova_na_mecu_4{1,2}='3';
        Ukupno_golova_na_mecu_4{1,3}='3+';
        Ukupno_golova_na_mecu_4{1,4}='3-4';
        Ukupno_golova_na_mecu_4{1,5}='3-5';
        Ukupno_golova_na_mecu_4{1,6}='3-6';
        Ukupno_golova_na_mecu_4{2,1}='Kvota';
        Ukupno_golova_na_mecu_4{2,2}=uk_gol_3_kvota;
        Ukupno_golova_na_mecu_4{2,3}=uk_gol_3plus_kvota;
        Ukupno_golova_na_mecu_4{2,4}=uk_gol_34_kvota;
        Ukupno_golova_na_mecu_4{2,5}=uk_gol_35_kvota;
        Ukupno_golova_na_mecu_4{2,6}=uk_gol_36_kvota;
       
        
		format bank,Ukupno_golova_na_mecu_4
        
        
        Ukupno_golova_na_mecu_5=cell(2,8);
        Ukupno_golova_na_mecu_5{1,1}='Broj golova';
        Ukupno_golova_na_mecu_5{1,2}='4';
        Ukupno_golova_na_mecu_5{1,3}='4+';
        Ukupno_golova_na_mecu_5{1,4}='4-5';
        Ukupno_golova_na_mecu_5{1,5}='4-6';
        Ukupno_golova_na_mecu_5{1,6}='5';
        Ukupno_golova_na_mecu_5{1,7}='5+';
        Ukupno_golova_na_mecu_5{1,8}='6+';
        Ukupno_golova_na_mecu_5{2,1}='Kvota';
        Ukupno_golova_na_mecu_5{2,2}=uk_gol_4_kvota;
        Ukupno_golova_na_mecu_5{2,3}=uk_gol_4plus_kvota;
        Ukupno_golova_na_mecu_5{2,4}=uk_gol_45_kvota;
        Ukupno_golova_na_mecu_5{2,5}=uk_gol_46_kvota;
        Ukupno_golova_na_mecu_5{2,6}=uk_gol_5_kvota;
        Ukupno_golova_na_mecu_5{2,7}=uk_gol_5plus_kvota;
        Ukupno_golova_na_mecu_5{2,8}=uk_gol_6plus_kvota;
        
		format bank,Ukupno_golova_na_mecu_5
		
        
		else
        
        warning('Uneli ste dva ista tima!')
    end
end