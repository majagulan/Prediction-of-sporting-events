function igra_prelazi_poluvreme_kraj(dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
        pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3  %podaci o verovatnocama prelaza

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
        
      %!!! IGRA: PRELAZI POLUVREME - KRAJ !!!
		
		prelaz_1_1_ver = (verov1_1 * verov_1)/100;
		prelaz_1_x_ver = (verov1_1 * verov_x)/100;
		prelaz_1_2_ver = (verov1_1 * verov_2)/100;
		prelaz_x_1_ver = (verov1_x * verov_1)/100;
		prelaz_x_x_ver = (verov1_x * verov_x)/100;
		prelaz_x_2_ver = (verov1_x * verov_2)/100;
		prelaz_2_1_ver = (verov1_2 * verov_1)/100;
		prelaz_2_x_ver = (verov1_2 * verov_x)/100;
		prelaz_2_2_ver = (verov1_2 * verov_2)/100;
		
		
		prelaz_1_1_kvota = 100 / prelaz_1_1_ver;
		prelaz_1_x_kvota = 100 / prelaz_1_x_ver;
		prelaz_1_2_kvota = 100 / prelaz_1_2_ver;
		prelaz_x_1_kvota = 100 / prelaz_x_1_ver;
		prelaz_x_x_kvota = 100 / prelaz_x_x_ver;
		prelaz_x_2_kvota = 100 / prelaz_x_2_ver;
		prelaz_2_1_kvota = 100 / prelaz_2_1_ver;
		prelaz_2_x_kvota = 100 / prelaz_2_x_ver;
		prelaz_2_2_kvota = 100 / prelaz_2_2_ver;
		
		
		%ISPIS!!!
		Prelazi=cell(2,10);
        Prelazi{1,1}='PK';
        Prelazi{1,2}='1-1';
        Prelazi{1,3}='1-x';
        Prelazi{1,4}='1-2';
        Prelazi{1,5}='x-1';
        Prelazi{1,6}='x-x';
        Prelazi{1,7}='x-2';
		Prelazi{1,8}='2-1';
		Prelazi{1,9}='2-x';
		Prelazi{1,10}='2-2';
        Prelazi{2,1}='Kvota';
        Prelazi{2,2}=prelaz_1_1_kvota;
        Prelazi{2,3}=prelaz_1_x_kvota;
        Prelazi{2,4}=prelaz_1_2_kvota;
        Prelazi{2,5}=prelaz_x_1_kvota;
        Prelazi{2,6}=prelaz_x_x_kvota;
        Prelazi{2,7}=prelaz_x_2_kvota;
		Prelazi{2,8}=prelaz_2_1_kvota;
		Prelazi{2,9}=prelaz_2_x_kvota;
		Prelazi{2,10}=prelaz_2_2_kvota;
        
		format bank,Prelazi
        	
	else
        
        warning('Uneli ste dva ista tima!')
    end
end
