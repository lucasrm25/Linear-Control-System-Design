%% Exact linearization of the Simulink model nlmodel_3D
%
% This MATLAB script is the command line equivalent of the exact
% linearization tab in linear analysis tool with current settings.
% It produces the exact same linearization results as hitting the Linearize button.

% MATLAB(R) file generated by MATLAB(R) 9.4 and Simulink Control Design (TM) 5.1.
%
% Generated on: 30-Nov-2018 17:17:10
function sys = linearize_model_scrpt(xorder)
%% Specify the model name
model = 'nlmodel_3D';

%% Specify the analysis I/Os
% Specify block name as the analysis I/Os
% to linearize the block nlmodel_3D/3-DOF NONLINEAR MODEL
io = 'nlmodel_3D/3-DOF NONLINEAR MODEL';

%% Specify the operating point
% Use the model initial condition
op = operpoint(model);


%% Linearize the model
sys = linearize(model,io,op,'StateOrder',xorder);
% sys = linearize(model,io,op);
end
