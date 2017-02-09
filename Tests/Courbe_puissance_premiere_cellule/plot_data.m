clear all
close all
clc

%% Low light

Rext_low = [155.4 349.6 1425 2163 2382 5550 8300 24670 30150 36810 41300 49000 51500 53500 57200 61500 67000 77000 87000 96800 118100 128000 137900 155500 169600 179400 195200];
Vr_low = [.001 .003 .014 .021 .023 .053 .079 .209 .24 .275 .297 .325 .333 .338 .351 .359 .375 .394 .411 .424 .448 .456 .462 .472 .48 .484 .489];
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

%% Medium light

Rext_moy = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr_moy = [.017 .049 .079 .109 .138 .166 .194 .221 .247 .276 .297 .48 .577 .629 .661 .681 .696 .706 .715 .722 .727];
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

%% High light

Rext = [572 1563 2549 3539 4520 5490 6480 7470 8450 9440 10420 20360 30220 40200 50000 60000 69900 79600 89500 99500 109300];
Vr = [.082 .221 .357 .481 .583 .661 .722 .768 .806 .835 .858 .962 .994 1.009 1.018 1.024 1.028 1.031 1.033 1.035 1.037];
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

%% Both lights

fig4 = figure(4)
plot(Rext_low, Pout_low, Rext, Pout)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe')
set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
legend({'Faible intensité lumineuse' 'Haute intensité lumineuse'})
saveas(fig4, 'Deux_luminosités', 'jpg');
saveas(fig4, 'Deux_luminosités', 'fig');