function furierTransform( pic1, pic2 )

    function magnitude_spectrum = fft(pic)
        %Reading image
        input_image = pic;

        %Convert image to gray scale if it is RGB
        if size(input_image, 3) == 3
            input_image = rgb2gray(input_image);
        end

        %Calculating fourier transform
        %tabdil be double adad ashari bozorg
        F = fft2(double(input_image));


        F_shifted = fftshift(F);

        %Calculating furier transform Domain
        magnitude_spectrum = log(1 + abs(F_shifted));
    end
    
    transPic1 = fft(pic1);
    transPic2 = fft(pic2);
    
    subplot(2, 2, 1);imshow(pic1);title('Original');
    subplot(2, 2, 2);imshow(transPic1, []);title('fft1');
    subplot(2, 2, 3);imshow(pic2);title('Original');
    subplot(2, 2, 4);imshow(transPic2, []);title('fft2');

end

