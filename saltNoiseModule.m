%code pour ajouté du bruit salt and pepper , tirer du help de matlab.
RUN = 1;       
                        while (RUN==1)
                prompt = { 'noise dentisy [0-1] :'};
                dlg_title = 'Enter a input values:';
                size_wind = [1 50];               
                def = {'The default value is 0.04',}; 
                options.Resize = 'on';
                answer = inputdlg(prompt,dlg_title,size_wind,def,options);
                
                    if (isempty(answer))
                        return;                   
                    end
                odpoved_saltandpaper_d = str2double(answer{1});                                      
                    if ((odpoved_saltandpaper_d>=0) && (odpoved_saltandpaper_d<=1))                            
                        RUN = 0;                        
                    end                                       
                        end
                        
                    h = waitbar(0,'Please wait...');
                    steps = 200;
                    for step = 1:steps
                        waitbar(step / steps)
                    end
                    close(h)
    app.inputImage_salt = imnoise(app.inputImage,'salt & pepper',odpoved_saltandpaper_d);
    app.inputImage = app.inputImage_salt;
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_salt, 'Parent', app.modifiedImageAxes);