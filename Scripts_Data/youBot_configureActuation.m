function youBot_configureActuation(modelname,variant)
% Copyright 2016-2019 The MathWorks, Inc.

sub_pth = find_system(modelname,'LookUnderMasks','all','FollowLinks','on',...
    'Variant','on','Name','Actuation');

set_param(char(sub_pth),'OverrideUsingVariant',variant);

