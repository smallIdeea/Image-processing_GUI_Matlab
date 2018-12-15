    app.inputImage_flip_horizontal = flip(app.inputImage,2);
    app.inputImage = app.inputImage_flip_horizontal; 
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_flip_horizontal, 'Parent', app.modifiedImageAxes);