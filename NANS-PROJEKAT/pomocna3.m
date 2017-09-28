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
		
		verov_dp1 = verov1_1 * verov2_1;
		verov_dp2 = verov1_2 * verov2_2;
		
					
		
	
		
		