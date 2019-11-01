function youBot_configureMotors(modelname,variant)
% Copyright 2016-2019 The MathWorks, Inc.

sub_pth = find_system(modelname,'LookUnderMasks','all','FollowLinks','on',...
    'Name','Actuation');

set_param(char(sub_pth),'OverrideUsingVariant','Motor');

mot_pth = [sub_pth{1} '/Motor'];

mot_list=find_system(mot_pth,'Variant','on');

for i = 1:length(mot_list)
    set_param(mot_list{i},'OverrideUsingVariant',variant);
end


