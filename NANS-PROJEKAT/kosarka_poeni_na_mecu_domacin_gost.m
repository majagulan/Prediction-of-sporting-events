function kosarka_poeni_na_mecu_domacin_gost(dom,go)
    
	if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
    end
    
	pomocna1K %podaci o nazivima timovima 
	
	if (domacin ~= gost)
        
        pomocna2K %poasonova distribucija
		
        %IGRA: POENI NA MECU - UKUPNO, DOMACI TIM I GOSTUJUCI TIM 
		
		%CEO MEC
		
        
        
        domacin_ocekivani_poeni = (( home_goals{domacin+1, 5} + away_goals{gost+1, 6} ) / 2);
        domacin_ocekivani_poeni=round(domacin_ocekivani_poeni);
        hendikep_domacin_poeni = domacin_ocekivani_poeni + 0.5;
        
        gost_ocekivani_poeni = (( away_goals{gost+1, 5} + home_goals{domacin+1, 6} ) / 2);
        gost_ocekivani_poeni=round( gost_ocekivani_poeni);
        hendikep_gost_poeni = gost_ocekivani_poeni + 0.5;
       
		
		hendikep_ukupno_poeni =  hendikep_domacin_poeni + hendikep_gost_poeni + 0.5;
		
		
		%ISPIS!!!
		Poeni_ukupno=cell(2,3);
       	Poeni_ukupno{1,1}='-';
      	Poeni_ukupno{1,2}='Poen';
      	Poeni_ukupno{1,3}='+';
      	Poeni_ukupno{2,1}=1.85;
      	Poeni_ukupno{2,2}=hendikep_ukupno_poeni;
      	Poeni_ukupno{2,3}=1.85;
      	
		format bank,Poeni_ukupno
		
		
		Poeni_domacin=cell(2,3);
       	Poeni_domacin{1,1}='-';
      	Poeni_domacin{1,2}='Poen';
      	Poeni_domacin{1,3}='+';
      	Poeni_domacin{2,1}=1.85;
      	Poeni_domacin{2,2}=hendikep_domacin_poeni;
      	Poeni_domacin{2,3}=1.85;
      	
		format bank,Poeni_domacin
		
		
		Poeni_gost=cell(2,3);
       	Poeni_gost{1,1}='-';
      	Poeni_gost{1,2}='Poen';
      	Poeni_gost{1,3}='+';
      	Poeni_gost{2,1}=1.85;
      	Poeni_gost{2,2}=hendikep_gost_poeni;
      	Poeni_gost{2,3}=1.85;
      	
		format bank,Poeni_gost
		
		
		%!!! 1. POLUVREME !!!
		
		domacin_ocekivani_poeni1 = (( home_goals1{domacin+1, 5} + away_goals1{gost+1, 6} ) / 2);
        domacin_ocekivani_poeni1=round(domacin_ocekivani_poeni1);
		hendikep_domacin_poeni1 = domacin_ocekivani_poeni1 + 0.5;
		
		gost_ocekivani_poeni1 = (( away_goals1{gost+1, 5} + home_goals1{domacin+1, 6} ) / 2);
        gost_ocekivani_poeni1=round( gost_ocekivani_poeni1);
		hendikep_gost_poeni1 = gost_ocekivani_poeni1 + 0.5;
		
		hendikep_ukupno_poeni1 =  hendikep_domacin_poeni1 + hendikep_gost_poeni1 + 0.5;
		
		
		%ISPIS!!!
		Poeni_ukupno1=cell(2,3);
       	Poeni_ukupno1{1,1}='-';
      	Poeni_ukupno1{1,2}='Poen';
      	Poeni_ukupno1{1,3}='+';
      	Poeni_ukupno1{2,1}=1.85;
      	Poeni_ukupno1{2,2}=hendikep_ukupno_poeni1;
      	Poeni_ukupno1{2,3}=1.85;
      	
		format bank,Poeni_ukupno1
		
		
		Poeni_domacin1=cell(2,3);
       	Poeni_domacin1{1,1}='-';
      	Poeni_domacin1{1,2}='Poen';
      	Poeni_domacin1{1,3}='+';
      	Poeni_domacin1{2,1}=1.85;
      	Poeni_domacin1{2,2}=hendikep_domacin_poeni1;
      	Poeni_domacin1{2,3}=1.85;
      	
		format bank,Poeni_domacin1
		
		
		Poeni_gost1=cell(2,3);
       	Poeni_gost1{1,1}='-';
      	Poeni_gost1{1,2}='Poen';
      	Poeni_gost1{1,3}='+';
      	Poeni_gost1{2,1}=1.85;
      	Poeni_gost1{2,2}=hendikep_gost_poeni1;
      	Poeni_gost1{2,3}=1.85;
      	
		format bank,Poeni_gost1
		

       else
        
        warning('Uneli ste dva ista tima!')
    end
end

