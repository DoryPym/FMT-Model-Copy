%% 生成PID模块所需要的参数
%% 清空工作空间
clear;
clc;
%% Err信号
Err = Simulink.Signal;
Err.DataType = 'single';
Err.Description = '输入的偏差量';
Err.CoderInfo.StorageClass = 'ExportedGlobal';
%% Ctrl信号
Ctrl = Simulink.Signal;
Ctrl.DataType = 'single';
Ctrl.Description = '输出的控制量';
Ctrl.CoderInfo.StorageClass = 'ExportedGlobal';
%% P_Term信号
P_Term = Simulink.Signal;
P_Term.DataType = 'single';
P_Term.Description = 'P项观测量';
P_Term.CoderInfo.StorageClass = 'ExportedGlobal';
%% I_Term信号
I_Term = Simulink.Signal;
I_Term.DataType = 'single';
I_Term.Description = 'I项观测量';
I_Term.CoderInfo.StorageClass = 'ExportedGlobal';
%% D_Term信号
D_Term = Simulink.Signal;
D_Term.DataType = 'single';
D_Term.Description = 'D项观测量';
D_Term.CoderInfo.StorageClass = 'ExportedGlobal';
%% Kp参数
Kp = Simulink.Parameter;
Kp.Value = 0.2;
Kp.DataType = 'single';
Kp.Description = 'PID控制模块的Kp参数；';
Kp.CoderInfo.StorageClass = 'ExportedGlobal';
%% Ki参数
Ki = Simulink.Parameter;
Ki.Value = 0.02;
Ki.DataType = 'single';
Ki.Description = 'PID控制模块的Ki参数；';
Ki.CoderInfo.StorageClass = 'ExportedGlobal';
%% Kd参数
Kd = Simulink.Parameter;
Kd.Value = 0.02;
Kd.DataType = 'single';
Kd.Description = 'PID控制模块的Kd参数；';
Kd.CoderInfo.StorageClass = 'ExportedGlobal';
%% I_Max上限参数
I_Max = Simulink.Parameter;
I_Max.Value = 1000;
I_Max.DataType = 'single';
I_Max.Description = 'PID控制模块的I项输出上限参数；';
I_Max.CoderInfo.StorageClass = 'ExportedGlobal';
%% I_Min下限参数
I_Min = Simulink.Parameter;
I_Min.Value = 200;
I_Min.DataType = 'single';
I_Min.Description = 'PID控制模块的I项输出下限参数；';
I_Min.CoderInfo.StorageClass = 'ExportedGlobal';
%% D_Max上限参数
D_Max = Simulink.Parameter;
D_Max.Value = 1000;
D_Max.DataType = 'single';
D_Max.Description = 'PID控制模块的D项输出上限参数；';
D_Max.CoderInfo.StorageClass = 'ExportedGlobal';
%% I_Min下限参数
D_Min = Simulink.Parameter;
D_Min.Value = 200;
D_Min.DataType = 'single';
D_Min.Description = 'PID控制模块的D项输出下限参数；';
D_Min.CoderInfo.StorageClass = 'ExportedGlobal';
%% Sample_Time采样时间
Sample_Time = Simulink.Parameter;
Sample_Time.Value = 0.01;
Sample_Time.DataType = 'single';
Sample_Time.Description = 'PID控制模块的D项输出下限参数；';
Sample_Time.CoderInfo.StorageClass = 'ExportedGlobal';
