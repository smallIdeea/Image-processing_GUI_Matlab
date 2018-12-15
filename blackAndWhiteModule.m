[~,~,D] = size(app.inputImage);   
        if D==3
            app.inputImage_bw= rgb2gray(app.inputImage);    
            app.inputImage = app.inputImage_bw;
            app.imageList{end+1} = app.inputImage;
            imshow(app.inputImage_bw, 'Parent', app.modifiedImageAxes);
        else
            msgbox('Please load an RGB image','Action crashed','error');
        end
        