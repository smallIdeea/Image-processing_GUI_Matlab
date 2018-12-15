RUN = 1;
while (RUN==1)
    prompt = {'Mean [0-1] :','Variance [0-1] :'};
    nometitle = ('Enter a input values:');
    dlg_title = nometitle;
    size_wind = [1 50; 1 50]; 
    defaultans = {'Enter a value for the Mean...','Enter a value for the Variance...'}; 
    options.Resize = 'on';
    answer = inputdlg(prompt,dlg_title,size_wind, defaultans,options);
    if (isempty(answer))
        return;
    end
    odpoved_gaussian_m = str2double(answer{1}); 
    odpoved_gaussian_v = str2double(answer{2}); 
    if ((odpoved_gaussian_m >= 0) && (odpoved_gaussian_m <= 1) && ...
            (odpoved_gaussian_v >=0) && (odpoved_gaussian_v <=1))
        RUN = 0;
    end
end
w = waitbar(0,'Please wait...');
steps = 200;
for step = 1:steps
    waitbar(step / steps)
end

typ_sumu=('gaussian');
app.inputImage_gaussian = imnoise(app.inputImage,typ_sumu,...
    odpoved_gaussian_m,odpoved_gaussian_v);
app.inputImage = app.inputImage_gaussian;
app.imageList{end+1} = app.inputImage;
imshow(app.inputImage_gaussian, 'Parent', app.modifiedImageAxes);

close(w)