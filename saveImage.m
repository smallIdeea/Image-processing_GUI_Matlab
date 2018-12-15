% uiputfile permet d'ouvrir une fenetre ou boite de dialogue a fin de
% recuperer un  fichier
[file, path]= uiputfile({'*.jpg';'*.tif';'*.png';'*.gif';'*.*'}, 'Save As');
save=[path file]; 
imwrite(app.inputImage,save,'jpg' );
