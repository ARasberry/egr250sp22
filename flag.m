clear
clc
pflag(1000)
imshow(pflag,[0 0 1;1 1 1])

function flag = pflag(length)
        
    height = length * 3/4;
    flag = [height, length];
    squareSideLength = length * 1/3;
    flag = uint8(flag)

end
        


