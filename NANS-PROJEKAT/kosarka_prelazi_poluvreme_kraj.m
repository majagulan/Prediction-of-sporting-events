function kosarka_prelazi_poluvreme_kraj(dom,go)
    
	if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
    end
    
	pomocna1K %podaci o nazivima timovima 
	
	if (domacin ~= gost)
        
        pomocna2K %poasonova distribucija
        pomocna3K
        
        %!!! IGRA: PRELAZI POLUVREME - KRAJ !!!
		
		prelaz_1_1_ver = (verov1_1 * verov_1)/100;
		prelaz_1_2_ver = (verov1_1 * verov_2)/100;
		prelaz_2_1_ver = (verov1_2 * verov_1)/100;
		prelaz_2_2_ver = (verov1_2 * verov_2)/100;
		
		prelaz_1_1_kvota = 100 / prelaz_1_1_ver;
		prelaz_1_2_kvota = 100 / prelaz_1_2_ver;
		prelaz_2_1_kvota = 100 / prelaz_2_1_ver;
		prelaz_2_2_kvota = 100 / prelaz_2_2_ver;
		
		
		%ISPIS!!!
		Prelazi=cell(2,5);
        Prelazi{1,1}='PK';
        Prelazi{1,2}='1-1';
        Prelazi{1,3}='1-2';
        Prelazi{1,4}='2-1';
        Prelazi{1,5}='2-2';
        Prelazi{2,1}='Kvota';
        Prelazi{2,2}=prelaz_1_1_kvota;
        Prelazi{2,3}=prelaz_1_2_kvota;
        Prelazi{2,4}=prelaz_2_1_kvota;
        Prelazi{2,5}=prelaz_2_2_kvota;
        
		format bank,Prelazi
		
	

       else
        
        warning('Uneli ste dva ista tima!')
    end
end

