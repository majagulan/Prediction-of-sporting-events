    %ISPIS
    Konacan_ishod1=cell(2,4);
    Konacan_ishod1{1,1}='Ishod';
    Konacan_ishod1{1,2}='Pobeda';
    Konacan_ishod1{1,3}='Nereseno';
    Konacan_ishod1{1,4}='Poraz';
    Konacan_ishod1{2,1}='Kvota';
    Konacan_ishod1{2,2}= abs(kvota_pobeda);
    Konacan_ishod1{2,3}=kvota_nereseno;
    Konacan_ishod1{2,4}= abs(kvota_poraz);
    format bank ,Konacan_ishod1