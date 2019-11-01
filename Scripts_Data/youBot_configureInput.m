function youBot_configureInput(modelname,variant)
% Copyright 2016-2018 The MathWorks, Inc.

in_pth = find_system(modelname,'LookUnderMasks','all','FollowLinks','on',...
    'Variant','on','Name','Input');

set_param(char(in_pth),'OverrideUsingVariant',variant);
end
