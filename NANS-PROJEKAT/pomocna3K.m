		%CELA UTAKMICA
					
		verov_1 = 0;		
		verov_2= 0;
		
		%!!! 1. POLUVREME !!!
		
		verov1_1 = 0;		
		verov1_2= 0;
		
		
					
		for x = 0:150   %vrste home
			for y = 0:150   %kolone away
						
				if (x > y)		% home pobedjuje
					verov_1 = verov_1 + verov_goal_results{x+1,y+1};
					verov1_1 = verov1_1 + verov_goal_results1{x+1,y+1};		%!!! 1. POLUVREME !!!
								
				elseif (y > x)	 % away pobedjuje
					verov_2 = verov_2 + verov_goal_results{x+1,y+1};
					verov1_2 = verov1_2 + verov_goal_results1{x+1,y+1};		%!!! 1. POLUVREME !!!
                    
% 								
				end							
			end
		end
		
		
	
					
		
	
		
		