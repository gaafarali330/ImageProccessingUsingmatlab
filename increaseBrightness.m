Value = 1.5;
img = imread('grayScale.jpg');
[x,y] = size(img);
increaseB = img;
for i = 1:1:x
  for j = 1:1:y
    increaseB(i,j) = img(i,j)* Value ;
    if (increaseB(i,j)>255) increaseB(i,j)=255;end
  end
end
imwrite(increaseB,'adjustBright.jpg');
imshow(increaseB); 