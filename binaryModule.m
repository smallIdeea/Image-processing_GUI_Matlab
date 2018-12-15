            RUN = 1;
            while (RUN==1)
                prompt = {'[ 0-1 ] :'};
                dlg_title = 'Level:';
                num_lines = 1;     
                def = {'0.5'};   
                answer = inputdlg(prompt,dlg_title,num_lines,def);
                
                if (isempty(answer)) 
                    return;                   
                end
                odpoved_binarny = str2double(answer{1});            
                if ((odpoved_binarny>=0) && (odpoved_binarny<=1)) 
                    RUN = 0;
                end
               
            end  
            
                app.inputImage_binarny = imbinarize(app.inputImage,odpoved_binarny);    
                app.inputImage = app.inputImage_binarny;
                app.imageList{end+1} = app.inputImage;
                imshow( app.inputImage, 'Parent', app.modifiedImageAxes);
