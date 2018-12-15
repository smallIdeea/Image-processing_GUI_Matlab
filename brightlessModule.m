        val_jas = app.ContrastSlider.Value;
        app.inputImage_jas = app.inputImage+val_jas;
        imshow(app.inputImage_jas, 'Parent', app.modifiedImageAxes);