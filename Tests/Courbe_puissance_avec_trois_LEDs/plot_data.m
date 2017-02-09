clear all
close all
clc

%% LED duty cycle = 50%

Rext_low = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr_low = [.012 .034 .055 .074 .094 .111 .128 .145 .161 .176 .19 .293 .337 .359 .372 .38 .385 .389 .392 .395 .397];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig1 = figure(1)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Faible intensité lumineuse')
set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig1, 'Faible_luminosité', 'jpg');
saveas(fig1, 'Faible_luminosité', 'fig');

%% LED duty cycle = 90%

Rext_moy = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr_moy = [.019 .051 .083 .114 .144 .174 .202 .23 .257 .283 .307 .489 .573 .617 .641 .657 .668 .676 .683 .688 .692];
Ir_moy = Vr_moy ./ Rext_moy;
Pout_moy = Vr_moy .* Ir_moy;

fig2 = figure(2)
plot(Rext_moy, Pout_moy)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Moyenne intensité lumineuse')
set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig2, 'Moyenne_luminosité', 'jpg');
saveas(fig2, 'Moyenne_luminosité', 'fig');

%% LED duty cycle = 20%

Rext = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr = [.003 .01 .017 .023 .029 .036 .042 .048 .053 .059 .064 .104 .123 .134 .141 .145 .148 .15 .152 .154 .155];
Ir = Vr ./ Rext;
Pout = Vr .* Ir;

fig3 = figure(3)
plot(Rext, Pout)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Haute intensité lumineuse')
set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig3, 'Haute_luminosité', 'jpg');
saveas(fig3, 'Haute_luminosité', 'fig');
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