 fig = uifigure;
 fig.Name = 'Adding Poisson Noise'; 
 fig.Color = [0.16 0.22 0.29];

 
   w = uiprogressdlg(fig,'Title','Noising... please wait',...
        'Indeterminate','on'); % fonction GUI qui simule l'attente

    typ_sumu=('poisson');
    app.inputImage_poisson = imnoise(app.inputImage,typ_sumu); %imnoise pour ajouter du bruit
    app.inputImage = app.inputImage_poisson;
    app.imageList{end+1} = app.inputImage;
    imshow(app.inputImage_poisson, 'Parent', app.modifiedImageAxes);
   
  close(w); 
  close(fig);
  