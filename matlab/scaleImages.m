function scaleImages( pic1, pic2 )
%koochak kardan size
    function scaledImage = scaler(pic, rate)
        % Read the image
        originalImage = pic;

        % Define the scaling factor
        scaleFactor = rate; % for half the size

        % Get the size of the original image
        [originalRows, originalCols, numChannels] = size(originalImage);

        % Calculate the size of the new image
        newRows = round(originalRows * scaleFactor);
        newCols = round(originalCols * scaleFactor);

        % Initialize the new image
        scaledImage = uint8(zeros(newRows, newCols, numChannels));

        % Compute the scaling ratios
        rowScale = originalRows / newRows;
        colScale = originalCols / newCols;

        % Perform nearest-neighbor interpolation
        %satr va sotoon haye jadid ro jaygozari mikone
        for row = 1:newRows
            %zarb va rond mikone
            for col = 1:newCols
                % Find the nearest neighbor in the original image
                origRow = round(row * rowScale);
                origCol = round(col * colScale);

                % Ensure the indices are within bounds
                %motmaen mishe maghadir index hamoon az mitrix asli kharej
                %nemishe
                origRow = min(max(origRow, 1), originalRows);
                origCol = min(max(origCol, 1), originalCols);

                % Assign the pixel value from the original image to the new image
                scaledImage(row, col, :) = originalImage(origRow, origCol, :);
            end
        end
    end %end of inner func

    scaleRate = input('Enter Scale rate between 0 and 1:');
    scaledPic1 = scaler(pic1, scaleRate);
    scaledPic2 = scaler(pic2, scaleRate);
    
    subplot(2, 2, 1);imshow(pic1);title('Original');
    subplot(2, 2, 2);imshow(pic2);title('Original');
    subplot(2, 2, 3);imshow(scaledPic1);title('Scaled');
    subplot(2, 2, 4);imshow(scaledPic2);title('Scaled');
    
end

