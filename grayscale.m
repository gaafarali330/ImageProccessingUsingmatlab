rgb = imread('IMG_20180701_080104.jpg');
grayScale = rgb(:,:,1)/3+rgb(:,:,2)/3+rgb(:,:,3)/2
imshow(grayScale);
imwrite(grayscale,'grayScale.jpg');
