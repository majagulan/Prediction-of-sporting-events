function igra_prelazi_poluvreme_kraj_dupla_sansa( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3  %podaci o verovatnocama prelaza

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
        
		%!!! IGRA: PRELAZI POLUVREME - KRAJ DUPLA SANSA !!!
		
		
		prelaz_1x_1x_ver = (verov1_1x * verov_1x)/100;
		prelaz_1x_12_ver = (verov1_1x * verov_12)/100;
		prelaz_1x_x2_ver = (verov1_1x * verov_x2)/100;
		prelaz_12_1x_ver = (verov1_12 * verov_1x)/100;
		prelaz_12_12_ver = (verov1_12 * verov_12)/100;
		prelaz_12_x2_ver = (verov1_12 * verov_x2)/100;
		prelaz_x2_1x_ver = (verov1_x2 * verov_1x)/100;
		prelaz_x2_12_ver = (verov1_x2 * verov_12)/100;
		prelaz_x2_x2_ver = (verov1_x2 * verov_x2)/100;
		
		
		prelaz_1x_1x_kvota = 100 / prelaz_1x_1x_ver;
		prelaz_1x_12_kvota = 100 / prelaz_1x_12_ver;
		prelaz_1x_x2_kvota = 100 / prelaz_1x_x2_ver;
		prelaz_12_1x_kvota = 100 / prelaz_12_1x_ver;
		prelaz_12_12_kvota = 100 / prelaz_12_12_ver;
		prelaz_12_x2_kvota = 100 / prelaz_12_x2_ver;
		prelaz_x2_1x_kvota = 100 / prelaz_x2_1x_ver;
		prelaz_x2_12_kvota = 100 / prelaz_x2_12_ver;
		prelaz_x2_x2_kvota = 100 / prelaz_x2_x2_ver;
		
		
		%ISPIS!!!
		Prelazi_dp=cell(2,10);
        Prelazi_dp{1,1}='PK dupla sansa';
        Prelazi_dp{1,2}='1x-1x';
        Prelazi_dp{1,3}='1x-12';
        Prelazi_dp{1,4}='1x-x2';
        Prelazi_dp{1,5}='12-1x';
        Prelazi_dp{1,6}='12-12';
        Prelazi_dp{1,7}='12-x2';
		Prelazi_dp{1,8}='x2-1x';
		Prelazi_dp{1,9}='x2-12';
		Prelazi_dp{1,10}='x2-x2';
        Prelazi_dp{2,1}='Kvota';
        Prelazi_dp{2,2}=prelaz_1x_1x_kvota;
        Prelazi_dp{2,3}=prelaz_1x_12_kvota;
        Prelazi_dp{2,4}=prelaz_1x_x2_kvota;
        Prelazi_dp{2,5}=prelaz_12_1x_kvota;
        Prelazi_dp{2,6}=prelaz_12_12_kvota;
        Prelazi_dp{2,7}=prelaz_12_x2_kvota;
		Prelazi_dp{2,8}=prelaz_x2_1x_kvota;
		Prelazi_dp{2,9}=prelaz_x2_12_kvota;
		Prelazi_dp{2,10}=prelaz_x2_x2_kvota;
        
		format bank,Prelazi_dp
		
        
     
        	
	else
        
        warning('Uneli ste dva ista tima!')
    end
end