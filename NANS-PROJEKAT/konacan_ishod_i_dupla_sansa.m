function konacan_ishod_i_dupla_sansa( dom,go)

     
       if (nargin ~= 2)
            warning('Neispravan broj ulaznih parametara!')

       end

             pomocna1 %pomocna skripta provera ulaznih parametara


        if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		

      
        %IGRA: KONACAN ISHOD I DUPLA SANSA
		
					
		
					
		% kvota_1 = domacin pobeda kvota, x_kvota = nereseno kvota, kvota_2 = gost pobeda kvota
		% kvota_1x = domacin pobeda ili nereseno kvota, kvota_12 = domacin pobeda ili gost pobeda kvota, kvota_x2 = nereseno ili gost pobeda kvota
		% kvota_dp1 = domacin pobedjuje u oba poluvremena, kvota_dp2 = gost pobedjuje u oba poluvremena 
		
		
		%CELA UTAKMICA
					
		verov_1 = 0;		
		verov_x = 0;
		verov_2= 0;
		
		%NAPOMENA: dupla sansa se igra samo za celokupan mec (kladionice ne nude mogucnost da se kladi na ovu igru samo za 1./2. poluvreme)
		
		verov_1x = 0;
		verov_12 = 0;
		verov_x2= 0;
		
		
		%!!! 1. POLUVREME !!!
		
		verov1_1 = 0;		
		verov1_x = 0;
		verov1_2= 0;
		
		
		%!!! DUPLA SANSA 1.POLUVREME !!!
		%NAPOMENA: ove verovatnoce cemo izracunati samo zato sto ce nam trebati pri racunanju prelaza poluvreme - kraj
		
		verov1_1x = 0;
		verov1_12 = 0;
		verov1_x2= 0;
		
		
		%!!! 2. POLUVREME !!!
		
		verov2_1 = 0;		
		verov2_x = 0;
		verov2_2= 0;
		
		
					
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
						
				if (x > y)		% home pobedjuje
					verov_1 = verov_1 + verov_goal_results{x+2,y+2};
					verov_1x = verov_1x + verov_goal_results{x+2,y+2}; 
					verov_12 = verov_12 + verov_goal_results{x+2,y+2};
					
					verov1_1 = verov1_1 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME !!!
					verov2_1 = verov2_1 + verov_goal_results2{x+2,y+2};		%!!! 2. POLUVREME !!!
					
					verov1_1x = verov1_1x + verov_goal_results1{x+2,y+2}; 		%!!! 1. POLUVREME DUPLA SANSA!!!
					verov1_12 = verov1_12 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME DUPLA SANSA!!!
								
				elseif (y > x)	 % away pobedjuje
					verov_2 = verov_2 + verov_goal_results{x+2,y+2};
					verov_12 = verov_12 + verov_goal_results{x+2,y+2};
					verov_x2 = verov_x2 + verov_goal_results{x+2,y+2};
					
					verov1_2 = verov1_2 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME !!!
					verov2_2 = verov2_2 + verov_goal_results2{x+2,y+2};		%!!! 2. POLUVREME !!!
					
					verov1_12 = verov1_12 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME DUPLA SANSA!!!
					verov1_x2 = verov1_x2 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME DUPLA SANSA!!!
							
				elseif (x == y)   % nereseno
					verov_x = verov_x + verov_goal_results{x+2,y+2};
					verov_1x = verov_1x + verov_goal_results{x+2,y+2};
					verov_x2 = verov_x2 + verov_goal_results{x+2,y+2};
					
					verov1_x = verov1_x + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME !!!
					verov2_x = verov2_x + verov_goal_results2{x+2,y+2};		%!!! 2. POLUVREME !!!
					
					verov1_1x = verov1_1x + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME DUPLA SANSA!!!
					verov1_x2 = verov1_x2 + verov_goal_results1{x+2,y+2};		%!!! 1. POLUVREME DUPLA SANSA!!!
								
				end							
			end
		end
		
		
		%!!! DUPLA POBEDA !!!
      
		verov_dp1 = (verov1_1 * verov2_1)/100;
		verov_dp2 = (verov1_2 * verov2_2)/100;
		
					
		
		%CELA UTAKMICA
		verov_1
        verov_x
        verov_2
		kvota_1 = 100 / verov_1;
		kvota_x = 100 / verov_x;
		kvota_2 = 100 / verov_2;
					
		kvota_1x = 100 / verov_1x;
		kvota_12 = 100 / verov_12;
		kvota_x2 = 100 / verov_x2;
		
		%!!! 1. POLUVREME !!!
		
		kvota1_1 = 100 / verov1_1;
		kvota1_x = 100 / verov1_x;
		kvota1_2 = 100 / verov1_2;
		
		
		%!!! 2. POLUVREME !!!
		
		kvota2_1 = 100 / verov2_1;
		kvota2_x = 100 / verov2_x;
		kvota2_2 = 100 / verov2_2;
		
		
		%!!! DUPLA POBEDA !!!
		
		kvota_dp1 = 100 / verov_dp1;
		kvota_dp2 = 100 / verov_dp2;
		
		
		%CELA UTAKMICA
		
		%ISPIS!!!
		Konacan_ishod_i_dupla_sansa=cell(2,7);
       	Konacan_ishod_i_dupla_sansa{1,1}='Ishod';
      	Konacan_ishod_i_dupla_sansa{1,2}='1';
      	Konacan_ishod_i_dupla_sansa{1,3}='x';
      	Konacan_ishod_i_dupla_sansa{1,4}='2';
      	Konacan_ishod_i_dupla_sansa{1,5}='1x';
      	Konacan_ishod_i_dupla_sansa{1,6}='12';
      	Konacan_ishod_i_dupla_sansa{1,7}='x2';
      	Konacan_ishod_i_dupla_sansa{2,1}='Kvota';
      	Konacan_ishod_i_dupla_sansa{2,2}=kvota_1;
      	Konacan_ishod_i_dupla_sansa{2,3}=kvota_x;
      	Konacan_ishod_i_dupla_sansa{2,4}=kvota_2;
      	Konacan_ishod_i_dupla_sansa{2,5}=kvota_1x;
      	Konacan_ishod_i_dupla_sansa{2,6}=kvota_12;
      	format bank,Konacan_ishod_i_dupla_sansa{2,7}=kvota_x2;
		
        Konacan_ishod_i_dupla_sansa
		
		
		%!!! 1. POLUVREME !!!
		
		%ISPIS!!!
		Konacan_ishod1=cell(2,4);
       	Konacan_ishod1{1,1}='Ishod';
      	Konacan_ishod1{1,2}='I 1';
      	Konacan_ishod1{1,3}='I x';
      	Konacan_ishod1{1,4}='I 2';
      	Konacan_ishod1{2,1}='Kvota';
      	Konacan_ishod1{2,2}=kvota1_1;
      	Konacan_ishod1{2,3}=kvota1_x;
      	Konacan_ishod1{2,4}=kvota1_2;
		
        Konacan_ishod1
		
		
		%!!! 2. POLUVREME !!!

		%ISPIS!!!
		Konacan_ishod2=cell(2,4);
       	Konacan_ishod2{1,1}='Ishod';
      	Konacan_ishod2{1,2}='II 1';
      	Konacan_ishod2{1,3}='II x';
      	Konacan_ishod2{1,4}='II 2';
      	Konacan_ishod2{2,1}='Kvota';
      	Konacan_ishod2{2,2}=kvota_1;
      	Konacan_ishod2{2,3}=kvota_x;
      	Konacan_ishod2{2,4}=kvota_2;
		
        Konacan_ishod2
		
		
		%!!! DUPLA POBEDA !!!
		
		%ISPIS!!!
		Dupla_pobeda=cell(2,3);
		Dupla_pobeda{1,1}='Ishod';
      	Dupla_pobeda{1,2}='I 1 & II 1';
		Dupla_pobeda{1,3}='I 2 & II 2';
		Dupla_pobeda{2,1}='Kvota';
		Dupla_pobeda{2,2}=kvota_dp1;
		Dupla_pobeda{2,3}=kvota_dp2;
		
		Dupla_pobeda
	else
        
        warning('Uneli ste dva ista tima!')
    end
 end