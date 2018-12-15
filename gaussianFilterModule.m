RUN = 1;
while (RUN==1)
    prompt = {'r:[ 0-20 ] :', 'c:[ 0-20 ] :', 'sigma:[ 0-10 ] :'};
    dlg_title = 'Values:';
    num_lines = 1;
    def = {'3', '3', '0.5'};
    answer = inputdlg(prompt,dlg_title,num_lines,def);
    
    if (isempty(answer))
        return;
    end
    odpoved_gaussian_rows = str2double(answer{1});
    odpoved_gaussian_columns = str2double(answer{2});
    odpoved_gaussian_sigma = str2double(answer{2});
    
    if ((odpoved_gaussian_rows>=0) && (odpoved_gaussian_rows<=20) && ...
            (odpoved_gaussian_columns>=0) && (odpoved_gaussian_columns<=20)&&...
            (odpoved_gaussian_sigma>=0) && (odpoved_gaussian_sigma<=10))
        RUN = 0;
    end
end
w=waitbar(0,'Please wait...');
steps = 200;
for step = 1:steps
    waitbar(step / steps)
end


hsize=[str2double(answer{1}) str2double(answer{2})]; 
h=fspecial('gaussian',hsize,odpoved_gaussian_sigma);

app.inputImage_gaussian_filter = imfilter(app.inputImage,h);
app.inputImage = app.inputImage_gaussian_filter;
app.imageList{end+1} = app.inputImage;
imshow(app.inputImage_gaussian_filter, 'Parent', app.modifiedImageAxes);
close(w);