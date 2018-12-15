%filtre moyenneur                        
RUN = 1;       
                        while (RUN==1)                         
                            prompt = {'row (0-5%):','column (0-5%):'};
                            dlg_title = 'Enter values for a average  filter:';
                            num_lines = 1;
                            def = {'2','2'};
                            answer = inputdlg(prompt,dlg_title,num_lines,def);
                                if (isempty(answer))
                                    return;                   
                                end
                            odpoved_average_row= str2double(answer{1});  
                            odpoved_average_cols= str2double(answer{2}); 
                                if ((odpoved_average_row>=0) && (odpoved_average_row <=5) &&...
                                      (odpoved_average_cols >=0) && (odpoved_average_cols <=5))                            

                                end  
                                    RUN = 0;
                        end
                        
            w = waitbar(0,'Please wait...');
            steps = 200;
            for step = 1:steps
                waitbar(step / steps)
            end
    hsize=[str2double(answer{1}) str2double(answer{2})];
    h=fspecial('average',hsize);

    app.inputImage_moyenneur_filter=imfilter(app.inputImage,h);

    app.inputImage = app.inputImage_moyenneur_filter;
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_moyenneur_filter, 'Parent', app.modifiedImageAxes);
    close(w)