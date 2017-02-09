clear all
close all
clc

%% LED duty cycle = 10%

Rext_low = [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000 7000];
Vr_low =   [.078 .078 .089 .097 .105 .113 .121 .128 .134 .139 .146 .152 .152 .154 .156 .158 .16 .162 .164 .165 .168 .179 .187 .195 .202];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig1 = figure(1)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 2 LED - 10% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig1, 'dc10', 'jpg');
saveas(fig1, 'dc10', 'fig');

%% LED duty cycle = 30%

Rext_low = [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000 7000];
Vr_low =   [.228 .246 .269 .291 .313 .335 .356 .376 .394 .41 .427 .434 .441 .447 .451 .455 .459 .462 .465 .468 .47 .489 .502 .511 .519];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig2 = figure(2)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 2 LED - 30% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig2, 'dc30', 'jpg');
saveas(fig2, 'dc30', 'fig');

%% LED duty cycle = 50%

Rext_low = [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000];
Vr_low =   [.363 .398 .433 .468 .503 .537 .572 .605 .635 .663 .685 .707 .718 .727 .735 .741 .748 .753 .757 .761 .767 .794 .81 .822];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig3 = figure(3)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 2 LED - 50% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig3, 'dc50', 'jpg');
saveas(fig3, 'dc50', 'fig');

%% LED duty cycle = 70%

Rext_low = [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000];
Vr_low =   [.492 .532 .58 .625 .671 .716 .761 .805 .848 .888 .922 .964 .981 .997 1.009 1.019 1.028 1.035 1.041 1.048 1.055 1.09 1.111 1.126];
Ir_low = Vr_low ./ Rext_low;
Pout_low = Vr_low .* Ir_low;

fig4 = figure(4)
plot(Rext_low, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 2 LED - 70% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(fig4, 'dc70', 'jpg');
saveas(fig4, 'dc70', 'fig');