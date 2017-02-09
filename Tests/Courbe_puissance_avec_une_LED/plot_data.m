clear all
close all
clc

%% LED duty cycle = 50%

Rext_low = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr_low = [.003 .009 .015 .021 .027 .033 .039 .045 .051 .056 .061 .112 .156 .191 .219 .242 .259 0.272 .282 .292 .298];
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
Vr_moy = [.006 .017 .028 .039 .049 .061 .07 .082 .092 .101 .111 .202 .279 .345 .396 .435 .466 .489 .508 .522 .535];
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
% 
% %% High light
% 
% Rext = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
% Vr = [.082 .221 .357 .481 .583 .661 .722 .768 .806 .835 .858 .962 .994 1.009 1.018 1.024 1.028 1.031 1.033 1.035 1.037];
% Ir = Vr ./ Rext;
% Pout = Vr .* Ir;
% 
% fig3 = figure(3)
% plot(Rext, Pout)
% ylabel('P_o_u_t [W]')
% xlabel('R_e_x_t [\Omega]')
% title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - Haute intensité lumineuse')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
% saveas(fig3, 'Haute_luminosité', 'jpg');
% saveas(fig3, 'Haute_luminosité', 'fig');
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