function igra_gost_ukupno_golova_kombinacije( dom,go)

   if (nargin ~= 2)
		warning('Neispravan broj ulaznih parametara!')
   
   end
    
         pomocna1 %pomocna skripta provera ulaznih parametara

	
	if  domacin~=gost

        pomocna2  %pomocna skripa Poasonova distribucija
        pomocna3  %verovatnoce i kvote
        pomocna4  %podaci o verovatnocama i kvotama za timove za celo mec i za oba poluvremena 

		%ISPIS!!!			
		Racunamo_kvote_za_mec_izmedju = strvcat(dom, go)
		
      %!!! IGRA: GOST UKUPNO GOLOVA KOMBINACIJE !!!
		
		Gost_uk_gol_komb_I_01_II_01_ver = (uk_gol_gost_01_ver1 * uk_gol_gost_01_ver2)/100;
		Gost_uk_gol_komb_I_01_II_02_ver = (uk_gol_gost_01_ver1 * uk_gol_gost_02_ver2)/100;
		Gost_uk_gol_komb_I_02_II_01_ver = (uk_gol_gost_02_ver1 * uk_gol_gost_01_ver2)/100;
		Gost_uk_gol_komb_I_02_II_02_ver = (uk_gol_gost_02_ver1 * uk_gol_gost_02_ver2)/100;
		Gost_uk_gol_komb_I_1plus_II_1plus_ver = (uk_gol_gost_1plus_ver1 * uk_gol_gost_1plus_ver2)/100;
		Gost_uk_gol_komb_I_1plus_II_2plus_ver = (uk_gol_gost_1plus_ver1 * uk_gol_gost_2plus_ver2)/100;
		Gost_uk_gol_komb_I_2plus_II_1plus_ver = (uk_gol_gost_2plus_ver1 * uk_gol_gost_1plus_ver2)/100;
		Gost_uk_gol_komb_I_2plus_II_2plus_ver = (uk_gol_gost_2plus_ver1 * uk_gol_gost_2plus_ver2)/100;
		Gost_uk_gol_komb_I_1plus_2plus_ver = (uk_gol_gost_1plus_ver1 * uk_gol_gost_2plus_ver)/100;
		Gost_uk_gol_komb_I_1plus_3plus_ver = (uk_gol_gost_1plus_ver1 * uk_gol_gost_3plus_ver)/100;
		
		
		Gost_uk_gol_komb_I_01_II_01_kvota = 100 / Gost_uk_gol_komb_I_01_II_01_ver;
		Gost_uk_gol_komb_I_01_II_02_kvota = 100 / Gost_uk_gol_komb_I_01_II_02_ver;
		Gost_uk_gol_komb_I_02_II_01_kvota = 100 / Gost_uk_gol_komb_I_02_II_01_ver;
		Gost_uk_gol_komb_I_02_II_02_kvota = 100 / Gost_uk_gol_komb_I_02_II_02_ver;
		Gost_uk_gol_komb_I_1plus_II_1plus_kvota = 100 / Gost_uk_gol_komb_I_1plus_II_1plus_ver;
		Gost_uk_gol_komb_I_1plus_II_2plus_kvota = 100 / Gost_uk_gol_komb_I_1plus_II_2plus_ver;
		Gost_uk_gol_komb_I_2plus_II_1plus_kvota = 100 / Gost_uk_gol_komb_I_2plus_II_1plus_ver;
		Gost_uk_gol_komb_I_2plus_II_2plus_kvota = 100 / Gost_uk_gol_komb_I_2plus_II_2plus_ver;
		Gost_uk_gol_komb_I_1plus_2plus_kvota = 100 / Gost_uk_gol_komb_I_1plus_2plus_ver;
		Gost_uk_gol_komb_I_1plus_3plus_kvota = 100 / Gost_uk_gol_komb_I_1plus_3plus_ver;
		
		
		%ISPIS!!!
		
		Gost_ukupno_golova_na_mecu_kombinacije=cell(2,11);
        Gost_ukupno_golova_na_mecu_kombinacije{1,1}='Kombinacija';
        Gost_ukupno_golova_na_mecu_kombinacije{1,2}='I 0-1 & II 0-1';
        Gost_ukupno_golova_na_mecu_kombinacije{1,3}='I 0-1 & II 0-2';
        Gost_ukupno_golova_na_mecu_kombinacije{1,4}='I 0-2 & II 0-1';
        Gost_ukupno_golova_na_mecu_kombinacije{1,5}='I 0-2 & II 0-2';
        Gost_ukupno_golova_na_mecu_kombinacije{1,6}='I 1+ & II 1+';
		Gost_ukupno_golova_na_mecu_kombinacije{1,7}='I 1+ & II 2+';
		Gost_ukupno_golova_na_mecu_kombinacije{1,8}='I 2+ & II 1+';
		Gost_ukupno_golova_na_mecu_kombinacije{1,9}='I 2+ & II 2+';
		Gost_ukupno_golova_na_mecu_kombinacije{1,10}='I 1+ & 2+';
		Gost_ukupno_golova_na_mecu_kombinacije{1,11}='I 1+ & 3+';
        Gost_ukupno_golova_na_mecu_kombinacije{2,1}='Kvota';
        Gost_ukupno_golova_na_mecu_kombinacije{2,2}=Gost_uk_gol_komb_I_01_II_01_kvota;
        Gost_ukupno_golova_na_mecu_kombinacije{2,3}=Gost_uk_gol_komb_I_01_II_02_kvota;
        Gost_ukupno_golova_na_mecu_kombinacije{2,4}=Gost_uk_gol_komb_I_02_II_01_kvota;
        Gost_ukupno_golova_na_mecu_kombinacije{2,5}=Gost_uk_gol_komb_I_02_II_02_kvota;
        Gost_ukupno_golova_na_mecu_kombinacije{2,6}=Gost_uk_gol_komb_I_1plus_II_1plus_kvota;
		Gost_ukupno_golova_na_mecu_kombinacije{2,7}=Gost_uk_gol_komb_I_1plus_II_2plus_kvota;
		Gost_ukupno_golova_na_mecu_kombinacije{2,8}=Gost_uk_gol_komb_I_2plus_II_1plus_kvota;
		Gost_ukupno_golova_na_mecu_kombinacije{2,9}=Gost_uk_gol_komb_I_2plus_II_2plus_kvota;
		Gost_ukupno_golova_na_mecu_kombinacije{2,10}=Gost_uk_gol_komb_I_1plus_2plus_kvota;
		Gost_ukupno_golova_na_mecu_kombinacije{2,11}=Gost_uk_gol_komb_I_1plus_3plus_kvota;
		
		format bank,Gost_ukupno_golova_na_mecu_kombinacije
			
			
	else
        
        warning('Uneli ste dva ista tima!')
    end
end