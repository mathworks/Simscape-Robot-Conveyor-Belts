% Script for testing main model and publishing results
% Copyright 2012-2023 The MathWorks, Inc.

% List models with publish scripts that have the same name
mdl_list = {...
    'youBot_Arm',...
    };

% Close models to avoid shadowing issues
for mdl_list_i = 1:length(mdl_list)
    bdclose(mdl_list{mdl_list_i});
end

% Loop over models with publish script
for mdl_list_i = 1:length(mdl_list)
    
    % Move to folder with publish scripts
    cd(fileparts(which(mdl_list{mdl_list_i})))
    cd('Overview')

    % Loop over publish scripts
    filelist_m=dir('*.m');
    filenames_m = {filelist_m.name};
    warning('off','Simulink:Engine:MdlFileShadowedByFile');
    for filenames_m_i=1:length(filenames_m)
        publish(filenames_m{filenames_m_i},'showCode',false)
    end    
end

clear filelist_m filenames_m filenames_m_i 
clear mdl_list mdl_list_i