choice1=menu('Izaberite sport','                          Fudbal                          ','           Kosarka         ');
if choice1==2                                 %OVDE DODAJ NAZIVE IGARA ZA KOSARKU
    choice=menu('Izaberite jednu od igara', '   Konacan ishod   ','   Poluvreme/Kraj   ','   Poeni na mecu   ');
    prompt={'Unesite naziv domaceg tima','Unesite naziv gostujuceg tima'};
    dgl_title='TIMOVI';
    num_lines=1;
    def={'',''};
    answer=inputdlg(prompt,dgl_title,num_lines,def);
    user_cancelled = isempty(answer);

    pomocna_meni_K %ISTO SAMO ZA IMENA TIMOVA KOSARKE

    if choice==1  %OVO CU JA KADA IZDELIM KOD
       kosarka_konacan_ishod(answer{1},answer{2});

    elseif choice==2
       kosarka_prelazi_poluvreme_kraj(answer{1},answer{2});

    elseif choice==3
        kosarka_poeni_na_mecu_domacin_gost(answer{1},answer{2});
    end
 elseif choice1==1 %fodbal
    choice4=menu('Izaberite metodu','          Poasonova distribucija         ','         ELO 22.kolo      ');
        if choice4==2
            choice5=menu('Izaberite mec','        Wolfsburg-Bremen        ','Bayern-Hamburger','Darmstadt-Augsburg','Freiburg-Dortmund','Leverkusen-Mainz','Leipzig-Koln','Hertha-Frankfurt','Ingolstadt-Monchengladbach','Schalke-Hoffenheim');
                if choice5==1
                    choiceWB=menu('Izaberite tim','Wolfsburg','Bremen');
                    if choiceWB==1
                        WB
                        pomocna_elo
                        eloII
                    else
                        WB
                        pomocna_elo
                        eloI
                    end
                end
                if choice5==2
                    choiceBH=menu('Izaberite tim','Bayern','Hamburger');
                     if choiceBH==1
                         BH
                         pomocna_elo
                         eloII
                     else
                         BH
                         pomocna_elo
                         eloI
                     end
                end
               if choice5==3
                    choiceDA=menu('Izaberite tim','Darmstadt','Augsburg');
                     if choiceDA==1
                         DA
                         pomocna_elo
                         eloII
                     else
                         DA
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==4
                    choiceFD=menu('Izaberite tim','Freiburg','Dortmund');
                     if choiceFD==1
                         FD
                         pomocna_elo
                         eloII
                     else
                         FD
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==5
                    choiceLM=menu('Izaberite tim','Leverkusen','Mainz');
                     if choiceLM==1
                        LM
                         pomocna_elo
                         eloII
                     else
                         LM
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==6
                    choiceLK=menu('Izaberite tim','Leipzig','Koln');
                     if choiceLK==1
                        LK
                         pomocna_elo
                         eloII
                     else
                         LK
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==7
                    choiceHF=menu('Izaberite tim','Hertha','Frankfurt');
                     if choiceHF==1
                        HF
                         pomocna_elo
                         eloII
                     else
                         HF
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==8
                    choiceIM=menu('Izaberite tim','Ingolstadt','Monchengladbach');
                     if choiceIM==1
                         IM
                         pomocna_elo
                         eloII
                     else
                         IM
                         pomocna_elo
                         eloI
                     end
               end
               if choice5==9
                    choiceSH=menu('Izaberite tim','Schalke','Hoffenheim');
                     if choiceSH==1
                         SH
                         pomocna_elo
                         eloII
                     else
                         SH
                         pomocna_elo
                         eloI
                     end
               end
        else % choice4==1
            %poason fodbal
        choice=menu('Izaberite jednu od igara','Konacan ishod i dupla sansa','Poluvreme-kraj','Poluvreme-kraj dupla sansa','Tacan rezultat','Ukupno golova na mecu','Ukupno golova na 1. poluvremenu','Ukupno golova na 2. poluvremenu', 'Domacin ukupno golova na mecu','Domacin ukupno golova 1. poluvreme', 'Domacin ukupno golova 2. poluvreme', 'Gost ukupno golova na mecu','Gost ukupno golova 1. poluvreme','Gost ukupno golova 2. poluvreme','Domacin ukupno golova kombinacije','Gost ukupno golova kombinacije');
        prompt={'Unesite naziv domaceg tima','Unesite naziv gostujuceg tima'};
        dgl_title='TIMOVI';
        num_lines=1;
        def={'',''};
        answer=inputdlg(prompt,dgl_title,num_lines,def);
        user_cancelled = isempty(prompt);

        pomocna_meni
            
        if choice==4
        igra_tacan_rezultat( answer{1},answer{2} );
        end
        
        if choice==1
        konacan_ishod_i_dupla_sansa( answer{1},answer{2});
        end
        
        if choice==2
        igra_prelazi_poluvreme_kraj( answer{1},answer{2});
        end
        
        if choice==3
        igra_prelazi_poluvreme_kraj_dupla_sansa( answer{1},answer{2});
        end
        
        if choice==5
        ukupno_golova_na_mecu( answer{1},answer{2});
        end
        
        if choice==6
        ukupno_golova_na_1_poluvremenu(answer{1},answer{2});
        end
        
        if choice==7
        ukupno_golova_na_2_poluvremenu( answer{1},answer{2});
        end
        
        if choice==8
        domacin_ukupno_golova_na_mecu( answer{1},answer{2});
        end
        
        if choice==9
        domacin_ukupno_golova_1_poluvreme( answer{1},answer{2});
        end
        
        if choice==10
        domacin_ukupno_golova_2_poluvreme( answer{1},answer{2});
        end
        
        if choice==11
        gost_ukupno_golova_na_mecu( answer{1},answer{2});
        end
        
        if choice==12
        gost_ukupno_golova_1_poluvreme( answer{1},answer{2});
        end
        
        if choice==13
        gost_ukupno_golova_2_poluvreme( answer{1},answer{2});
        end
        
        if choice==14
        igra_domacin_ukupno_golova_kombinacije( answer{1},answer{2});
        end
        
        if choice==15
        igra_gost_ukupno_golova_kombinacije( answer{1},answer{2});
        end
        
    end
        
end
    




