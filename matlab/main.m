function main(varargin)

%this part actually checks input arguments and gives error. Func1
if nargin > 2
    error('Error: This Function must have exactly 2 arguments.');
elseif nargin < 2
    error('Error: This Function must have exactly 2 arguments.');
end
F = varargin{1};
G = varargin{2};

% this part checks if the input has the size of a picture or not.Func2
picSizeCheck(F);
picSizeCheck(G);


%this part finds picture size and type and if it is RGB it shows 
%channels of it. Func3


ctrl = 1;
while ctrl == 1
    commands = sprintf('1)picSize_RGBShow \n2)scaleImages \n3)resize_merge \n4)shift \n5)furierTransform \n0)Exit');
    disp(commands);
    uin = input('Choose from the list:');
    
    if uin == 1
        picSize_RGBShow(F, G);
    elseif uin == 2
        scaleImages(F, G);
    elseif uin == 3
        resize_merge(F, G);
    elseif uin == 4
        shift(F, G)
    elseif uin == 5
        furierTransform(F, G)
    elseif uin == 0
        ctrl = 0;
    end
end
end

