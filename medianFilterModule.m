  RUN=1; 
    while (RUN==1)
            
        prompt = {'row (0-5%):','column (0-5%):'};
        dlg_title = 'Enter values for a median filter:';
        num_lines = 1;
        def = {'2','2'};
        answer = inputdlg(prompt,dlg_title,num_lines,def);
        if (isempty(answer))
            return;
        end

        M1 = str2double(answer{1})/100;
        M2 = str2double(answer{2})/100;

        if (M1>=0 && M1<=5 && M2>=0 && M2<=5)
            RUN = 0;
        end
    end
    [~,~,D] = size(app.inputImage);
        if D==3 
    w = waitbar(0, 'Median filtering ...');
   
        M1 = str2double(answer{1})/100;
        M2 = str2double(answer{2})/100;
    hsize=[str2double(answer{1}) str2double(answer{2})];
    
    
    app.inputImage_median_filter(:,:,1) = medfilt2(app.inputImage(:,:,1));
    waitbar(1/3, w);
    app.inputImage_median_filter(:,:,2) = medfilt2(app.inputImage(:,:,2));
    waitbar(2/3, w);
    app.inputImage_median_filter(:,:,3) = medfilt2(app.inputImage(:,:,3));
    
    app.inputImage = app.inputImage_median_filter;
    app.imageList{end+1} = app.inputImage;
    
    imshow(app.inputImage_median_filter, 'Parent', app.modifiedImageAxes);
    close(w);
        else
            
      w = waitbar(0, 'Median filtering ...');
   
        M1 = str2double(answer{1})/100;
        M2 = str2double(answer{2})/100;
    hsize=[str2double(answer{1}) str2double(answer{2})];   
    app.inputImage_median_filter = medfilt2(app.inputImage);
    app.inputImage = app.inputImage_median_filter;
    app.imageList{end+1} = app.inputImage;
    
    imshow(app.inputImage_median_filter, 'Parent', app.modifiedImageAxes);
    close(w);
    
        end

    