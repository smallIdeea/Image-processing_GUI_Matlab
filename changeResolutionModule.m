
            [H,W,~] = size(app.inputImage); 
           
                prompt = {'Width = ','Height = '};
                nometitle = ('Change Resolution');
                dlg_title = nometitle;
                size_wind = [1 50; 1 50]; 
                defaultans = {'width','height'}; 
                options.Resize = 'on';
                
                answer = inputdlg(prompt,dlg_title,size_wind, defaultans,options); 
                odpoved_sirka = str2double(answer{1}); 
                odpoved_vyska = str2double(answer{2});
                    if (isempty(answer)) 
                        return;                   
                    end
                   
                    if ((odpoved_sirka<=0) || (odpoved_vyska<=0) ) 
                         msgbox('The entered values are less than zero'...
                             ,'Crash','error'); 
                         
                    end
                    if ( (odpoved_sirka>=W) || (odpoved_vyska>=H))  
                         msgbox('The entered values are more than the resolution'...
                             ,'Crash','error');                                               

                    end          
              
    app.rozlisenie=imresize(app.inputImage, [odpoved_vyska odpoved_sirka]);
    app.inputImage=app.rozlisenie;
    app.imageList{end+1} = app.inputImage;
    imshow(app.rozlisenie, 'Parent', app.modifiedImageAxes);
    s=num2str(size(app.inputImage));
    app.inputImageInfo.Value = s;