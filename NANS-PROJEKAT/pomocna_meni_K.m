 if ( (strcmp(answer{1},'Real Madrid')) || (strcmp(answer{1},'real madrid')) || (strcmp(answer{1},'Real madrid'))  || (strcmp(answer{1},'CSKA Moscow')) || (strcmp(answer{1},'CSKA moscow')) || (strcmp(answer{1},'cska moscow')) || (strcmp(answer{1},'Olympiakos')) || (strcmp(answer{1},'olympiakos')) ||  (strcmp(answer{1},'Fenerbahce')) || (strcmp(answer{1},'fenerbahce')) || (strcmp(answer{1},'Panathinaikos')) || (strcmp(answer{1},'panathinaikos')) || (strcmp(answer{1},'Crvena zvezda')) || (strcmp(answer{1},'crvena zvezda')) ||  (strcmp(answer{1},'Baskonia')) || (strcmp(answer{1},'baskonia')) || (strcmp(answer{1},'Anadolu Efes')) || (strcmp(answer{1},'Anadolu efes')) || (strcmp(answer{1},'anadolu efes')) || (strcmp(answer{1},'Darussafaka Dogus')) || (strcmp(answer{1},'Darussafaka dogus')) || (strcmp(answer{1},'darussafaka dogus')) || (strcmp(answer{1},'Zalgiris Kaunas')) || (strcmp(answer{1},'Zalgiris kaunas')) || (strcmp(answer{1},'zalgiris kaunas')) || (strcmp(answer{1},'Barcelona')) || (strcmp(answer{1},'barcelona')) || (strcmp(answer{1},'Bamberg')) || (strcmp(answer{1},'bamberg')) || (strcmp(answer{1},'Maccabi Tel Aviv')) || (strcmp(answer{1},'Maccabi tel aviv')) || (strcmp(answer{1},'maccabi tel aviv')) || (strcmp(answer{1},'Unics Kazan')) || (strcmp(answer{1},'Unics kazan')) || (strcmp(answer{1},'unics kazan')) || (strcmp(answer{1},'Milano')) || (strcmp(answer{1},'milano')) || (strcmp(answer{1},'Galatasaray')) || (strcmp(answer{1},'galatasaray')))			
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

  if ( (strcmp(answer{2},'Real Madrid')) || (strcmp(answer{2},'real madrid')) || (strcmp(answer{2},'Real madrid'))  || (strcmp(answer{2},'CSKA Moscow')) || (strcmp(answer{2},'CSKA moscow')) || (strcmp(answer{2},'cska moscow')) || (strcmp(answer{2},'Olympiakos')) || (strcmp(answer{2},'olympiakos')) ||  (strcmp(answer{2},'Fenerbahce')) || (strcmp(answer{2},'fenerbahce')) || (strcmp(answer{2},'Panathinaikos')) || (strcmp(answer{2},'panathinaikos')) || (strcmp(answer{2},'Crvena zvezda')) || (strcmp(answer{2},'crvena zvezda')) ||  (strcmp(answer{2},'Baskonia')) || (strcmp(answer{2},'baskonia')) || (strcmp(answer{2},'Anadolu Efes')) || (strcmp(answer{2},'Anadolu efes')) || (strcmp(answer{2},'anadolu efes')) || (strcmp(answer{2},'Darussafaka Dogus')) || (strcmp(answer{2},'Darussafaka dogus')) || (strcmp(answer{2},'darussafaka dogus')) || (strcmp(answer{2},'Zalgiris Kaunas')) || (strcmp(answer{2},'Zalgiris kaunas')) || (strcmp(answer{2},'zalgiris kaunas')) || (strcmp(answer{2},'Barcelona')) || (strcmp(answer{2},'barcelona')) || (strcmp(answer{2},'Bamberg')) || (strcmp(answer{2},'bamberg')) || (strcmp(answer{2},'Maccabi Tel Aviv')) || (strcmp(answer{2},'Maccabi tel aviv')) || (strcmp(answer{2},'maccabi tel aviv')) || (strcmp(answer{2},'Unics Kazan')) || (strcmp(answer{2},'Unics kazan')) || (strcmp(answer{2},'unics kazan')) || (strcmp(answer{2},'Milano')) || (strcmp(answer{2},'milano')) || (strcmp(answer{2},'Galatasaray')) || (strcmp(answer{2},'galatasaray')))			
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
        prompt2={'Unesite ponovo naziv domaceg tima','Unesite ponovo naziv gostujuceg tima'};
        dgl_title='GRESKA';
        num_lines=1;
        def={'',''};
        answer=inputdlg(prompt2,dgl_title,num_lines,def);
        user_cancelled = isempty(answer);
 end
 