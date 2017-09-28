    if ( (strcmp(answer{1},'Darmstadt')) || (strcmp(answer{1},'darmstadt')) || (strcmp(answer{1},'Ingolstadt 04')) || (strcmp(answer{1},'ingolstadt 04')) || (strcmp(answer{1},'Hamburger')) || (strcmp(answer{1},'hamburger')) || (strcmp(answer{1},'Bremen')) || (strcmp(answer{1},'bremen')) || (strcmp(answer{1},'Mainz')) || (strcmp(answer{1},'mainz')) || (strcmp(answer{1},'Schalke')) || (strcmp(answer{1},'schalke')) || (strcmp(answer{1},'Monchengladbach')) || (strcmp(answer{1},'monchengladbach')) || (strcmp(answer{1},'Augsburg')) || (strcmp(answer{1},'augsburg')) || (strcmp(answer{1},'Leverkusen')) || (strcmp(answer{1},'leverkusen')) || (strcmp(answer{1},'Freiburg')) || (strcmp(answer{1},'freiburg')) || (strcmp(answer{1},'Koln')) || (strcmp(answer{1},'koln')) || (strcmp(answer{1},'Darmstadt')) || (strcmp(answer{1},'darmstadt')) || (strcmp(answer{1},'Hertha')) || (strcmp(answer{1},'hertha')) || (strcmp(answer{1},'Borussia')) || (strcmp(answer{1},'borussia')) || (strcmp(answer{1},'Hoffenheim')) || (strcmp(answer{1},'hoffenheim'))  || (strcmp(answer{1},'Bayern munich')) || (strcmp(answer{1},'bayern munich')) || (strcmp(answer{1},'Bayern Munich')) || (strcmp(answer{1},'Leipzig')) || (strcmp(answer{1},'leipzig')) || (strcmp(answer{1},'Eintracht')) || (strcmp(answer{1},'eintracht')) || (strcmp(answer{1},'Wolfsburg')) || (strcmp(answer{1},'wolfsburg')) )			
    else
          
     d = dialog('Position',[300 300 250 150],'Name','GRESKA');

    txt = uicontrol('Parent',d,...
               'Style','text',...
               'Position',[20 80 210 40],...
               'String','Pogresan naziv domaceg tima, kliknite dugme OK kada unesete opet.');

     btn = uicontrol('Parent',d,...
               'Position',[85 20 70 25],...
               'String','OK',...
               'Callback','delete(gcf)');
        prompt1={'Unesite ponovo naziv domaceg tima','Unesite ponovo naziv gostujuceg tima'};
        dgl_title='GRESKA';
        num_lines=1;
        def={'',''};
        answer=inputdlg(prompt1,dgl_title,num_lines,def);
        user_cancelled = isempty(answer);
    end
   
     if ( (strcmp(answer{2},'Darmstadt')) || (strcmp(answer{2},'darmstadt')) || (strcmp(answer{2},'Ingolstadt 04')) || (strcmp(answer{2},'ingolstadt 04')) || (strcmp(answer{2},'Hamburger')) || (strcmp(answer{2},'hamburger')) || (strcmp(answer{2},'Bremen')) || (strcmp(answer{2},'bremen')) || (strcmp(answer{2},'Mainz')) || (strcmp(answer{2},'mainz')) || (strcmp(answer{2},'Schalke')) || (strcmp(answer{2},'schalke')) || (strcmp(answer{2},'Monchengladbach')) || (strcmp(answer{2},'monchengladbach')) || (strcmp(answer{2},'Augsburg')) || (strcmp(answer{2},'augsburg')) || (strcmp(answer{2},'Leverkusen')) || (strcmp(answer{2},'leverkusen')) || (strcmp(answer{2},'Freiburg')) || (strcmp(answer{2},'freiburg')) || (strcmp(answer{2},'Koln')) || (strcmp(answer{2},'koln')) || (strcmp(answer{2},'Darmstadt')) || (strcmp(answer{2},'darmstadt')) || (strcmp(answer{2},'Hertha')) || (strcmp(answer{2},'hertha')) || (strcmp(answer{2},'Borussia')) || (strcmp(answer{2},'borussia')) || (strcmp(answer{2},'Hoffenheim')) || (strcmp(answer{2},'hoffenheim'))  || (strcmp(answer{2},'Bayern munich')) || (strcmp(answer{2},'bayern munich')) || (strcmp(answer{2},'Bayern Munich')) || (strcmp(answer{2},'Leipzig')) || (strcmp(answer{2},'leipzig')) || (strcmp(answer{2},'Eintracht')) || (strcmp(answer{2},'eintracht')) || (strcmp(answer{2},'Wolfsburg')) || (strcmp(answer{2},'wolfsburg')) )			
     else
         
        d = dialog('Position',[300 300 250 150],'Name','GRESKA');

        txt = uicontrol('Parent',d,...
                   'Style','text',...
                   'Position',[20 80 210 40],...
                   'String','Pogresan naziv gostujuceg tima, kliknite dugme OK kada unesete opet.');

        btn = uicontrol('Parent',d,...
                   'Position',[85 20 70 25],...
                   'String','OK',...
                   'Callback','delete(gcf)');
        prompt2={'Unesite ponovo naziv domaceg tima','Unesite ponovo naziv gostujuceg tima'};
        dgl_title='GRESKA';
        num_lines=1;
        def={'',''};
        answer=inputdlg(prompt2,dgl_title,num_lines,def);
        user_cancelled = isempty(answer);
    end