function youBot_Arm_winopen_file(filename)
% Copyright 2016-2024 The MathWorks, Inc.

if (exist(filename))
    if(ispc)
        winopen(filename)
    elseif(ismac)
        eval(['!open ' filename]);
    end
else
    msgbox(['File ' filename ' is not on your path.  It may have been excluded to reduce the size of the folder containing all the supporting files for this example.'],'File not provided');
end

