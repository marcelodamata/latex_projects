function [ IM3 ] = mydiff( lenspower )

IM1 = im2double(imread(strcat('wb_N_20-200_Camera+',num2str(lenspower),',00D(lens).png')));
IM2 = im2double(imread(strcat('wb_N_20-200_Camera+',num2str(lenspower),',00D(simulated).png')));

IM3 = imabsdiff(IM1,IM2);
figure, imshow(1-IM3);

imwrite(1-IM3, strcat('wb_N_20-200_Camera+',num2str(lenspower),',00D(diff).png'));
end

