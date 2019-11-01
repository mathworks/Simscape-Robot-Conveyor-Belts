% Copyright 2016-2017 The MathWorks(TM), Inc.

YBT_HomeDir = pwd;

% Code to use copy within this repository
addpath([YBT_HomeDir filesep 'Libraries' filesep 'CFL_Libs']);
cd([YBT_HomeDir filesep 'Libraries' filesep 'CFL_Libs']);
startup_Contact_Forces

cd(YBT_HomeDir)
addpath([YBT_HomeDir filesep 'CAD']);
addpath([YBT_HomeDir filesep 'Scripts_Data']);
addpath([YBT_HomeDir filesep 'Libraries']);
addpath([YBT_HomeDir filesep 'Libraries' filesep 'Pace']);
addpath([YBT_HomeDir filesep 'Images']);
addpath([YBT_HomeDir filesep 'Optim']);
addpath([YBT_HomeDir filesep 'Resources']);
addpath([YBT_HomeDir filesep 'URDF']);

if(exist('Libraries')==7)
    cd Libraries
    if((exist('+MyMath')==7) && ~exist('MyMath_lib'))
        ssc_build MyMath
    end
    if(exist('Pace')==7)
        cd Pace
        if((exist('sfun_time.c')) && ~exist('sfun_time.mexw64'))
            mex sfun_time.c
        end
    end
    cd(YBT_HomeDir)
end
if(exist([YBT_HomeDir filesep 'Slides_Recordings' filesep 'Videos'])==7)
    cd Slides_Recordings
    cd Videos
    addpath(genpath(pwd))
    cd(YBT_HomeDir)
end

if(exist([YBT_HomeDir filesep 'html'])==7)
    addpath([YBT_HomeDir filesep 'html' filesep 'html']);
end

youBot_PARAM

youBot_Arm
