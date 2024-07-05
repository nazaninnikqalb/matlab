function picSizeCheck( pic )
%check mikonim bebinim voroodi ax hast ya na
if size(pic,3) > 3 || size(pic, 3) <= 1
    error('Error, your input is not RGB or gray picture.')
end

end

