data = load('fan_air_velocity.mat');
vars = fieldnames(data);
s = data.(vars{1});          % use the first variable stored in the MAT-file
T = struct2table(s);