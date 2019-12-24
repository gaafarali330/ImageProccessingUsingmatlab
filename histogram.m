
%// Read in grayscale image
openImage = imread('grayScale.jpg');
[rows,cols] = size(openImage); 

%// histogram code 
histogram_values = zeros(256,1);
for i = 1:rows
  for j = 1:cols
    p = double(openImage(i,j)) + 1;
    histogram_values(p) = histogram_values(p) + 1;    
  end
end

%// Show histogram on screen
bar(0:255, histogram_values, 'histc');