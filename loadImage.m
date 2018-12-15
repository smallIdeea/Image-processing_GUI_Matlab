
   %code pour charger l'image charger en memoire 
   [Filename, Pathname] = uigetfile({'*.*'},'Výber obrázok');

        
            if Filename==0 
            warndlg('Vous avez pas choisi une image.file') ; 
            end         
    app.fullPath = [Pathname Filename];
    [~, ~, ext]=fileparts(Filename);
    
    podporovane_formaty=({'.bmp','.jpg','.jpeg','.png'});
    found=0;
    
    %en cas d'erreur sur le fichier
        for x=1:length(podporovane_formaty)
            
            if (strcmpi(ext,podporovane_formaty{x}))
                
                found=1;   

             end
        end
             if (found==0) 
                 errordlg('Please select - [ .jpg, .jpeg, .bmp, .png ] ',...
                    'Mauvais format de fichier');
             end
             
       
    w = waitbar(0,'Please wait...');
    steps = 500;
        for step = 1:steps
            waitbar(step / steps)
        end

    app.inputImage = fullfile(Pathname, Filename); 
    app.inputImage = imread(app.inputImage); 

    
    imshow( app.inputImage, 'Parent', app.modifiedImageAxes);
    imshow( app.inputImage, 'Parent', app.inputImageAxes);
    app.imageList = {app.inputImage};
    close(w);
       
