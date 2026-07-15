data = load('fan_rotation_speed.mat');
vars = fieldnames(data);
s = data.(vars{1});          % use the first variable stored in the MAT-file
T1 = struct2table(s);
data = load('fan_air_velocity.mat');
vars = fieldnames(data);
s = data.(vars{1});
T = struct2table(s);
F03_air_velocity_table = T(50611:75915, {'test_id', 'fan_id', 'location_id', 'time_sec', 'time_min', 'time_of_day_hours', 'air_speed_mps', 'vel_x_mps', 'vel_y_mps', 'vel_z_mps'});
save('F03_air_velocity.mat', "F03_air_velocity_table")