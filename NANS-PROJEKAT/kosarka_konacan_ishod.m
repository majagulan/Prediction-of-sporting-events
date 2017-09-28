function kosarka_konacan_ishod(dom,go)
    
	if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
    end
    
	pomocna1K %podaci o nazivima timovima 
	
	if (domacin ~= gost)
        
        pomocna2K %poasonova distribucija
		
			
		%IGRA: KONACAN ISHOD
		
					
		% kvota_1 = domacin pobeda kvota, kvota_2 = gost pobeda kvota
		
		
		%CEO MEC
		
		verov_1 = 0;		
		verov_2 = 0;
		
		%!!! 1. POLUVREME !!!
		
		verov1_1 = 0;		
		verov1_2 = 0;
	
					
		for x = 0:150   %vrste home
			for y = 0:150   %kolone away
						
				if (x > y)		% home pobedjuje
					verov_1 = verov_1 + verov_goal_results{x+1,y+1};
  					verov1_1 = verov1_1 + verov_goal_results1{x+1,y+1};		%!!! 1. POLUVREME !!!
								
				elseif (y > x)	 % away pobedjuje
					verov_2 = verov_2 + verov_goal_results{x+1,y+1};
					verov1_2 = verov1_2 + verov_goal_results1{x+1,y+1};		%!!! 1. POLUVREME !!!
							
				end							
			end
		end
					
					
		kvota_1 = 100 / verov_1;
		kvota_2 = 100 / verov_2;
		
		kvota1_1 = 100 / verov1_1;
		kvota1_2 = 100 / verov1_2;
		
			
		
		%ISPIS!!!
        Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
		%CEO MEC
		
		Konacan_ishod=cell(2,3);
       	Konacan_ishod{1,1}='Ishod';
      	Konacan_ishod{1,2}='1';
      	Konacan_ishod{1,3}='2';
      	Konacan_ishod{2,1}='Kvota';
      	Konacan_ishod{2,2}=kvota_1;
      	Konacan_ishod{2,3}=kvota_2;
		
        format bank,Konacan_ishod
		
		%!!! 1. POLUVREME
		
		Konacan_ishod1=cell(2,3);
       	Konacan_ishod1{1,1}='Ishod';
      	Konacan_ishod1{1,2}='I 1';
      	Konacan_ishod1{1,3}='I 2';
      	Konacan_ishod1{2,1}='Kvota';
      	Konacan_ishod1{2,2}=kvota1_1;
      	Konacan_ishod1{2,3}=kvota1_2;
		
        format bank,Konacan_ishod1

       else
        
        warning('Uneli ste dva ista tima!')
    end
end

