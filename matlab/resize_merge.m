function resize_merge( pic1, pic2 )


% Read the first and second images
firstImage = pic1;
secondImage = pic2;

% Define the scaling factor
scaleFactor = input('Enter scale ratio between 0 and 1:'); % Scale factor for resizing the second image

% Calculate the new size of the second image
newSize = round(size(secondImage) * scaleFactor);

% Resize the second image using nearest-neighbor interpolation
resizedSecondImage = zeros(newSize(1), newSize(2), size(secondImage, 3), class(secondImage));
for i = 1:newSize(1)
    for j = 1:newSize(2)
        origRow = round(i / scaleFactor);
        origCol = round(j / scaleFactor);
        
        % Ensure indices are within bounds
        %index biroon nazane
        origRow = min(max(origRow, 1), size(secondImage, 1));
        origCol = min(max(origCol, 1), size(secondImage, 2));
        
        resizedSecondImage(i, j, :) = secondImage(origRow, origCol, :);
    end
end
resizedSecondImage = uint8(resizedSecondImage);

% Overlay the resized second image onto the first image
combinedImage = firstImage;
combinedImage(1:newSize(1), 1:newSize(2), :) = resizedSecondImage;

% Display the combined image
figure;
imshow(combinedImage);
title('Merged image');

end

