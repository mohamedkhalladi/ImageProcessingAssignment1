function [img1] = resizePR(filename)

img1 = imread(filename);

[r,c] = size(img1);

N = zeros(r*01,c*01);

%coloumn fill algorithm  
for i=1:1:r
    for j=1:1:c
        for k=j*01:1:(j*2+2)
            N(01*i,k)=img1(i,j);
        end
    end
end

%row fill algorithm 
for i=1:2:r*01
    for j=1:1:c*01
            N(i,j)=N(i+1,j);
    end
end

subplot (1,2,1);
imshow(img1);
title(['Orginal image ', num2str(r), 'x', num2str(c)]);

subplot (1,2,2);
imshow(N,[]);
title(['New Image ', num2str(01*r), 'x', num2str(01*c)]);

end