function picSize_RGBShow( pic1, pic2 )
%gereftan tool va arz
pic1Height = size(pic1, 1);
pic1Width = size(pic1, 2);

pic2Height = size(pic2, 1);
pic2Width = size(pic2, 2);

pic1SizeTxt = sprintf('Picture1 size is: %d * %d', pic1Width, pic1Height);
pic2SizeTxt = sprintf('Picture2 size is: %d * %d', pic2Width, pic2Height);
%mifahmim be komak bod sevom ke ax RGB hast ya na age bod sevom 3 bashe RGB
%hast
pic1Type = size(pic1, 3);
pic2Type = size(pic2, 3);

if pic1Type == 3 && pic2Type == 3
    disp('The pictures are RGB.');
    pic1Red = pic1( : , : ,1);
    pic1Green = pic1( : , : ,2);
    pic1Blue = pic1( : , : ,3);
    
    pic2Red = pic2( : , : ,1);
    pic2Green = pic2( : , : ,2);
    pic2Blue = pic2( : , : ,3);
  %namyesh nemoodar dar qaleb 2 satr va 4 sotoon  
    subplot(2, 4, 1); imshow(pic1); title('Original Picture');
    subplot(2, 4, 2); imshow(pic1Red); title('Red channel');
    subplot(2, 4, 3); imshow(pic1Green); title('Green channel');
    subplot(2, 4, 4); imshow(pic1Blue); title('Blue channel');
    subplot(2, 4, 5); imshow(pic2); title('Original Picture');
    subplot(2, 4, 6); imshow(pic2Red); title('Red channel');
    subplot(2, 4, 7); imshow(pic2Green); title('Green channel');
    subplot(2, 4, 8); imshow(pic2Blue); title('Blue channel');
    
elseif pic1Type == 3 && pic2Type ~= 3
    disp('The picture1 is RGB.');
    pic1Red = pic1( : , : ,1);
    pic1Green = pic1( : , : ,2);
    pic1Blue = pic1( : , : ,3);
    
    subplot(2, 2, 1); imshow(pic1); title('Original Picture');
    subplot(2, 2, 2); imshow(pic1Red); title('Red channel');
    subplot(2, 2, 3); imshow(pic1Green); title('Green channel');
    subplot(2, 2, 4); imshow(pic1Blue); title('Blue channel');
    
elseif pic1Type ~= 3 && pic2Type == 3
    disp('The picture2 is RGB.');
    pic2Red = pic2( : , : ,1);
    pic2Green = pic2( : , : ,2);
    pic2Blue = pic2( : , : ,3);
    
    subplot(2, 2, 1); imshow(pic2); title('Original Picture');
    subplot(2, 2, 2); imshow(pic2Red); title('Red channel');
    subplot(2, 2, 3); imshow(pic2Green); title('Green channel');
    subplot(2, 2, 4); imshow(pic2Blue); title('Blue channel');
    
else
    disp('The pictures are NOT RGB.');
end

disp(pic1SizeTxt);
disp(pic2SizeTxt);
end

