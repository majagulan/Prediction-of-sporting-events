        
        % DOMACIN
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
		
        %1 POLUVREME DOMACIN
		uk_gol_dom_0_ver1 = 0;
		uk_gol_dom_02_ver1 = 0;
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
                    uk_gol_dom_02_ver1 = uk_gol_dom_02_ver1 + verov_goal_results1{x+2,y+2};
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_dom_01_ver1 = uk_gol_dom_01_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_1_ver1 = uk_gol_dom_1_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_1plus_ver1 = uk_gol_dom_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_dom_12_ver1 = uk_gol_dom_12_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 2)                                                             %bice ukupno 2
                    uk_gol_dom_02_ver1 = uk_gol_dom_02_ver1 + verov_goal_results1{x+2,y+2};
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
        
        %2 POLUVREME DOMACIN
        	
		uk_gol_dom_0_ver2 = 0;
		uk_gol_dom_01_ver2 = 0;
        uk_gol_dom_02_ver2 = 0;
		uk_gol_dom_1_ver2 = 0;
		uk_gol_dom_1plus_ver2 = 0;
		uk_gol_dom_12_ver2 = 0;
		uk_gol_dom_2plus_ver2 = 0;
		uk_gol_dom_3plus_ver2 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_dom_0_ver2 = uk_gol_dom_0_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_01_ver2 = uk_gol_dom_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_02_ver2 = uk_gol_dom_02_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_dom_01_ver2 = uk_gol_dom_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_1_ver2 = uk_gol_dom_1_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_12_ver2 = uk_gol_dom_12_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
                    uk_gol_dom_02_ver2 = uk_gol_dom_02_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_12_ver2 = uk_gol_dom_12_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_3plus_ver2 = uk_gol_dom_3plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_dom_1plus_ver2 = uk_gol_dom_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_2plus_ver2 = uk_gol_dom_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_dom_3plus_ver2 = uk_gol_dom_3plus_ver2 + verov_goal_results2{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_dom_0_kvota2 = 100 / uk_gol_dom_0_ver2; 
		uk_gol_dom_01_kvota2 = 100 / uk_gol_dom_01_ver2;
		uk_gol_dom_1_kvota2 = 100 / uk_gol_dom_1_ver2;
		uk_gol_dom_1plus_kvota2 = 100 / uk_gol_dom_1plus_ver2;
		uk_gol_dom_12_kvota2 = 100 / uk_gol_dom_12_ver2;
		uk_gol_dom_2plus_kvota2 = 100 / uk_gol_dom_2plus_ver2;
		uk_gol_dom_3plus_kvota2 = 100 / uk_gol_dom_3plus_ver2;
        
        %GOST
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
		
        %1 POLUVREME GOST
        uk_gol_gost_0_ver1 = 0;
		uk_gol_gost_01_ver1 = 0;
        uk_gol_gost_02_ver1 = 0;
		uk_gol_gost_1_ver1 = 0;
		uk_gol_gost_1plus_ver1 = 0;
		uk_gol_gost_12_ver1 = 0;
		uk_gol_gost_2plus_ver1 = 0;
		uk_gol_gost_3plus_ver1 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_gost_0_ver1 = uk_gol_gost_0_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_01_ver1 = uk_gol_gost_01_ver1 + verov_goal_results1{x+2,y+2};
                    uk_gol_gost_02_ver1 = uk_gol_gost_02_ver1 + verov_goal_results1{x+2,y+2};
					
					
				elseif (x == 1)															    %bice ukupno 
					uk_gol_gost_01_ver1 = uk_gol_gost_01_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_1_ver1 = uk_gol_gost_1_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_1plus_ver1 = uk_gol_gost_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_12_ver1 = uk_gol_gost_12_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
                    uk_gol_gost_02_ver1 = uk_gol_gost_02_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_1plus_ver1 = uk_gol_gost_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_12_ver1 = uk_gol_gost_12_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_2plus_ver1 = uk_gol_gost_2plus_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_gost_1plus_ver1 = uk_gol_gost_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_2plus_ver1 = uk_gol_gost_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_3plus_ver1 = uk_gol_gost_3plus_ver1 + verov_goal_results1{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_gost_1plus_ver1 = uk_gol_gost_1plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_2plus_ver1 = uk_gol_gost_2plus_ver1 + verov_goal_results1{x+2,y+2};
					uk_gol_gost_3plus_ver1 = uk_gol_gost_3plus_ver1 + verov_goal_results1{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_gost_0_kvota1 = 100 / uk_gol_gost_0_ver1; 
		uk_gol_gost_01_kvota1 = 100 / uk_gol_gost_01_ver1;
		uk_gol_gost_1_kvota1 = 100 / uk_gol_gost_1_ver1;
		uk_gol_gost_1plus_kvota1 = 100 / uk_gol_gost_1plus_ver1;
		uk_gol_gost_12_kvota1 = 100 / uk_gol_gost_12_ver1;
		uk_gol_gost_2plus_kvota1 = 100 / uk_gol_gost_2plus_ver1;
		uk_gol_gost_3plus_kvota1 = 100 / uk_gol_gost_3plus_ver1;
        
        %2 POLUVREME GOST
        
        
		uk_gol_gost_0_ver2 = 0;
		uk_gol_gost_01_ver2 = 0;
        uk_gol_gost_02_ver2 = 0;
        uk_gol_gost_1_ver2 = 0;
		uk_gol_gost_1plus_ver2 = 0;
		uk_gol_gost_12_ver2 = 0;
		uk_gol_gost_2plus_ver2 = 0;
		uk_gol_gost_3plus_ver2 = 0;
		
		
		for x = 0:4   %vrste home
			for y = 0:4   %kolone away
				
				if (x == 0)																	%bice ukupno 0
					uk_gol_gost_0_ver2 = uk_gol_gost_0_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_01_ver2 = uk_gol_gost_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_02_ver2 = uk_gol_gost_02_ver2 + verov_goal_results2{x+2,y+2};
					
				elseif (x == 1)															    %bice ukupno 1
					uk_gol_gost_01_ver2 = uk_gol_gost_01_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_1_ver2 = uk_gol_gost_1_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_1plus_ver2 = uk_gol_gost_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_12_ver2 = uk_gol_gost_12_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 2)																%bice ukupno 2
                    uk_gol_gost_02_ver2 = uk_gol_gost_02_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_1plus_ver2 = uk_gol_gost_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_12_ver2 = uk_gol_gost_12_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_2plus_ver2 = uk_gol_gost_2plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 3)																%bice ukupno 3
					uk_gol_gost_1plus_ver2 = uk_gol_gost_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_2plus_ver2 = uk_gol_gost_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_3plus_ver2 = uk_gol_gost_3plus_ver2 + verov_goal_results2{x+2,y+2};
				
				elseif (x == 4)																%bice ukupno 4
					uk_gol_gost_1plus_ver2 = uk_gol_gost_1plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_2plus_ver2 = uk_gol_gost_2plus_ver2 + verov_goal_results2{x+2,y+2};
					uk_gol_gost_3plus_ver2 = uk_gol_gost_3plus_ver2 + verov_goal_results2{x+2,y+2};
									
				end						
				
			end
		end
		
		
		uk_gol_gost_0_kvota2 = 100 / uk_gol_gost_0_ver2; 
		uk_gol_gost_01_kvota2 = 100 / uk_gol_gost_01_ver2;
		uk_gol_gost_1_kvota2 = 100 / uk_gol_gost_1_ver2;
		uk_gol_gost_1plus_kvota2 = 100 / uk_gol_gost_1plus_ver2;
		uk_gol_gost_12_kvota2 = 100 / uk_gol_gost_12_ver2;
		uk_gol_gost_2plus_kvota2 = 100 / uk_gol_gost_2plus_ver2;
		uk_gol_gost_3plus_kvota2 = 100 / uk_gol_gost_3plus_ver2;
		