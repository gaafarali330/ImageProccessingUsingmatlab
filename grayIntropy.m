I = imread('grayScale.jpg');
x = entropy(I);
%functionH = MyEntropy(x);
imshow(x);
figure()
[Height,Width] = size(x);
[m,Binsx]=imhist(x);
m = m/(Height*Width);
sprintf('the sum of the histogram value is = %g',sum(m));
figure,plot(Binsx,m,'k')
xlabel('pixel value'),ylabel('relative count')
H = sum(-m.*log2(m));
sprintf('the entropy of the image is = %g',H)