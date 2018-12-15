    app.inputImage_otocenie_180 = imrotate(app.inputImage,180); % imrotate pour fair la rotation de limage
    app.inputImage = app.inputImage_otocenie_180; 
    app.imageList{end+1} = app.inputImage;
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_otocenie_180, 'Parent', app.modifiedImageAxes);
 