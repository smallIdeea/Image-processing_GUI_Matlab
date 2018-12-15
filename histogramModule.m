
    [~,~,D] = size(app.inputImage);
        if D==3  
            
    inputImage_Red_Hist = app.inputImage(:,:,1); 
    inputImage_Green_Hist = app.inputImage(:,:,2);
    inputImage_Blue_Hist = app.inputImage(:,:,3);
    
    [inputImage_pixelCountRed , ~] = imhist(inputImage_Red_Hist, 256); 
    [inputImage_pixelCountGreen , ~] = imhist(inputImage_Green_Hist, 256);
    [inputImage_pixelCountBlue, ~] = imhist(inputImage_Blue_Hist, 256);
    
    app.inputImage = inputImage_pixelCountRed;
    app.inputImage = inputImage_pixelCountGreen;
    app.inputImage = inputImage_pixelCountBlue;
    
    plot(inputImage_pixelCountRed, 'r'); 
    hold on;
    plot(inputImage_pixelCountGreen, 'g');
    plot(inputImage_pixelCountBlue, 'b');
     
        else     
            imhist(app.inputImage);
            
        end