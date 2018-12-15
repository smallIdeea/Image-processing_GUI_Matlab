 app.inputImage_otocenie_90 = imrotate(app.inputImage,90);
    app.imageList{end+1} = app.inputImage;
    app.inputImage = app.inputImage_otocenie_90; 
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_otocenie_90, 'Parent', app.modifiedImageAxes);