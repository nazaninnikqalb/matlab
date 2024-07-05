function shift( pic1, pic2)
    function shifted_image = sh(pic)
        % Read the input image
        input_image = pic;

        % Define shift amounts along x and y axes (example shifts)
        %maghadiri ke gharare shift bedim ro zakhire
        shift_x = xy(1, 1);
        shift_y = xy(1, 2);

        % Get image dimensions
        [height, width, ~] = size(input_image);

        % Circular shift the image
        shifted_image = zeros(size(input_image), 'uint8');

        for x = 1:width
            for y = 1:height
                % Calculate circular indices
                %miyad shift mide bad mod migire ke oonayi ke kharej mishan
                %az oonvar nesshoon dade mishan
                new_x = mod(x + shift_x - 1, width) + 1;
                new_y = mod(y + shift_y - 1, height) + 1;

                % Apply the circular shift
                shifted_image(new_y, new_x, :) = input_image(y, x, :);
            end
        end
    end
    xy = input('Enter a vector of x and y shift values:');
    shifted1 = sh(pic1);
    shifted2 = sh(pic2);
    
    subplot(2, 2, 1);imshow(pic1);title('Image1'); 
    subplot(2, 2, 2);imshow(shifted1);title('Shifted1');
    subplot(2, 2, 3);imshow(pic2);title('Image2');
    subplot(2, 2, 4);imshow(shifted2);title('shifted2');
end

