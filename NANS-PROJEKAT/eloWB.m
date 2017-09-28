    w=[1,-1; 1,-1; -1,1; -1,1; -1,1; -1,1; -1,1; 1,-1; 1,-1; 0,0; -1,1; 1,-1; -1,1; 0,0; 1,-1; 0,0; 0,0];
    
    %Bremen-Wolfsburg
    G=[2,1; 3,2; 0,6; 3,5; 1,2; 1,3; 0,3; 3,0; 2,1; 1,1; 1,3; 4,1; 0,1; 0,0; 4,2; 2,2; 2,2];
    [n1,m1]=size(G);
    for y=1:n1
        gol_raz(1,y)=abs((G(y,1))-(G(y,2)));
        if gol_raz(1,y)<=1
         g(1,y)=1;
        elseif gol_raz(1,y)==2
            g(1,y)=1.5;
        else
            g(1,y)=(11+gol_raz(1,y))/8;
        end
            
    end
     g;
    
    
    n=5; %br vrsta=odigranih utakmica
    m = 2; %br kolona=timova
   
    r_stari = zeros(m,1);
    r_novi = zeros(m,1);
    mi = zeros(1,m);
    S = zeros(1,2);
    %P i K su parametri koji omogucavaju fino podesavanje ELO algoritma
    P = 400; %P dodatni logicki paramrtar ukazuje na sirenje rejtinga
    K = 30;   %nacionalna liga obicni mecevi
  
    y=1;
    for x = 1:n %po igrama
        utakmica = w(x,:);   %[1,-1]  1utakmicu 2 tima I tim pobeda II izgubio
        i = utakmica(1,1); % pobeda,poraz ili nereseno za svaki tim
        j = utakmica(1,2); 
        
        %parametar S = recent performance of teams, racuna se na osnovu
        %postignutih rezultata
        % ako je tim pobedio S=1, izgubio S=0, i ako je nereseno S=0.5;
        if(i > j)
        S(1,1) = 1;
        S(1,2) = 0;
        
        end
        
        %parametar mi = ocekivana razlika u rezultatu izmedju tima I i J
        mi(1,1) = 1 / (1 + 10^(-1*((r_stari(1,1) - r_stari(2,1)))/P));
        mi(1,2) = 1 / (1 + 10^(-1*((r_stari(2,1) - r_stari(1,1)))/P));
        
        %80 poena se dodaje domacinu 
        r_novi(1,1) = (r_stari(1,1) + (K*g(1,y)*(S(1,1) - mi(1,1))));  
        r_novi(2,1) = (r_stari(2,1) + (K*g(1,y)*(S(1,2) - mi(1,2))))+80;

        %resetuj parametar mi i stari rejting
        mi = zeros(1,m);
        r_stari = r_novi;
        y=y+1;
    end
    
    %rejting
    r = r_novi;
    dr=r(1,1)-r(2,1)
    
    verov_nereseno=1/sqrt(2*pi*exp(1))*exp(-((dr/200)^2)/2*(exp(1))^2);
    verov_nereseno= verov_nereseno*100
 
    verov_pobeda=(1/(1+10^(-dr/400))) - (1/2)*verov_nereseno;
    verov_pobeda=verov_pobeda*100
    
    verov_poraz=(1/(1+10^(dr/400))) - (1/2)*verov_nereseno;
    verov_poraz=verov_poraz*100
    
    kvota_nereseno=100/verov_nereseno;
    kvota_pobeda=100/verov_pobeda;
    kvota_poraz=100/verov_poraz;
    
    
    dr_ji=r(2,1)-r(1,1);  %rj-ri ZA DRUGI TIM WOLFSBURG
    
    verov_nereseno2=1/sqrt(2*pi*exp(1))*exp(-((dr_ji/200).^2)/2*(exp(1)).^2); 
    verov_nereseno2= verov_nereseno2*100; 
    
    verov_pobeda2=(1/(1+10^(-dr_ji/400))) - (1/2)*verov_nereseno2;
    verov_pobeda2=verov_pobeda2*100;
    
    verov_poraz2=(1/(1+10^(dr_ji/400))) - (1/2)*verov_nereseno2;
    verov_poraz2=verov_poraz2*100;
    
    kvota_nereseno2=100/verov_nereseno2;
    kvota_pobeda2=100/verov_pobeda2;
    kvota_poraz2=100/verov_poraz2;
    		