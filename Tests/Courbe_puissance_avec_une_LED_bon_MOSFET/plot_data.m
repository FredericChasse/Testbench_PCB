clear all
close all
clc

%% LED duty cycle = 50%

Rext_low = [572  1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20300 30290 40160 50000 60000 69700 79500 89500 99400 199400];
Vr_low =   [.155 .417 .632 .694 .719 .734 .745 .754 .762 .767 .772  .805  .827  .84   .851 .86    .868  .874  .88   .884  .912];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig1 = figure(1)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Faible intensité lumineuse')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig1, 'Faible_luminosité', 'jpg');
saveas(fig1, 'Faible_luminosité', 'fig');

%% LED duty cycle = 90%

Rext_moy = [572  1563 2549  3539  4520  5490  6480  7470 8450 9440  10420 20300 30290 40160 50000 60000 69700 79500 89500 99400 199400];
Vr_moy =   [.255 .69  1.075 1.207 1.253 1.279 1.297 1.31 1.32 1.328 1.335 1.374 1.391 1.4   1.406 1.41  1.412 1.414 1.415 1.416 1.422];
Ir_moy = Vr_moy ./ Rext_moy;
Pout_moy = Vr_moy .* Ir_moy;

fig2 = figure(2)
plot(Rext_moy, Pout_moy)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Moyenne intensité lumineuse')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig2, 'Moyenne_luminosité', 'jpg');
saveas(fig2, 'Moyenne_luminosité', 'fig');

%% LED duty cycle = 20%

Rext = [572  1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20300 30290 40160 50000 60000 69700 79500 89500 99400 199400];
Vr =   [.063 .172 .258 .285 .298 .308 .314 .32  .326 .33  .335 .362   .38   .393  .403  .412  .419  .425  .43   .435  .46];
Ir = Vr ./ Rext;
Pout = Vr .* Ir;

fig3 = figure(3)
plot(Rext, Pout)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Haute intensité lumineuse')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig3, 'Haute_luminosité', 'jpg');
saveas(fig3, 'Haute_luminosité', 'fig');

% %% LED duty cycle = 5%
% 
% Rext = [572  1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20300 30290 40160 50000 60000 69700 79500 89500 99400 199400];
% Vr =   [];
% Ir = Vr ./ Rext;
% Pout_10 = Vr .* Ir;
% 
% fig4 = figure(4)
% plot(Rext, Pout_10)
% ylabel('P_o_u_t [W]')
% xlabel('R_e_x_t [\Omega]')
% title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Haute intensité lumineuse')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
% saveas(fig4, '100_luminosité', 'jpg');
% saveas(fig4, '100_luminosité', 'fig');
% 
% %% Both lights
% 
% fig4 = figure(4)
% plot(Rext_low, Pout_low, Rext, Pout)
% ylabel('P_o_u_t [W]')
% xlabel('R_e_x_t [\Omega]')
% title('Puissance de sortie d''une cellule solaire en fonction de la charge externe')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
% legend({'Faible intensité lumineuse' 'Haute intensité lumineuse'})
% saveas(fig4, 'Deux_luminosités', 'jpg');
% saveas(fig4, 'Deux_luminosités', 'fig');