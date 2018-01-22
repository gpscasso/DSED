clear
close all

% Guardamos las muestras del audio en data
[data, fs] = audioread('haha.wav');
file = fopen('sample_in.dat','w');
fprintf(file, '%d\n', round(data.*127));

% Filtramos la señal HP
test_hp = filter([-0.0078, -0.2031, 0.6015, -0.2031, -0.0078],[1, 0, 0, 0, 0], data);

% Filtramos la señal LP
test_lp = filter([0.039, 0.2422, 0.4453, 0.2422, 0.039],[1, 0, 0, 0, 0], data);

% Guardamos los audios filtrados por nuestro testbench
% HP 
vhdl_hp=load('sample_out_hp.dat')/127;

% LP
vhdl_lp=load('sample_out_lp.dat')/127;

% Truncamos las señales filtradas por matlab
% 231 11286
% 462 11517
% 1617 9392
new_matlab_hp = test_hp(1:11056);
new_matlab_lp = test_lp(1:11056);

% Eliminamos la primera muestra de la señal de nuestro TB
% 1556 9331
new_vhdl_hp = vhdl_hp(2:11057);
new_vhdl_lp = vhdl_lp(2:11057);


% 
figure
plot(resta_lp,'r'); title('Error filtro paso bajo');
figure
plot(resta_hp,'b'); title('Error filtro paso alto');

% Prueba de mierda del pesado del niño este, joder


