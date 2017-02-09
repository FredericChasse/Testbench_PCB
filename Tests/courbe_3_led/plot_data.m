clear all
close all
clc

format shortG

nFig = 1;

%% LED duty cycle = 0.1%

Rext = [1000 2000 3000 4000 5000 6000 7000 10000 20000 120000];
Vr_low =   [0.006 .011 .016 .019 .023 .025 .027 .033 .044 .078];
OCV = .106;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 0.1;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 0.1% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc0_1', 'jpg');
saveas(h, 'dc0_1', 'fig');

%% LED duty cycle = 1%

Rext = [100  200  300  400   500   600   700   800 900  1000 2000 3000 4000 5000 6000 7000   10000 20000 120000];
Vr_low =   [.007 .014 .021 .026 .031 .035   .039  .042 .045 .048 .068 .08  .088 .094  .099 .103    .112 .129 .167];
OCV = .198;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 1;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 1% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc1', 'jpg');
saveas(h, 'dc1', 'fig');

%% LED duty cycle = 3%

Rext   = [100  200  300  400  500   600   700   800 900  1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 3000 4000];
Vr_low = [.021 .041 .056 .068 .077 .085 .092 .098 .103 .108 .113 .117 .12 .123 .127 .129 .132 .134 .137 .139 .155 .173];
OCV = .300;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 3;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 3% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc3', 'jpg');
saveas(h, 'dc3', 'fig');

%% LED duty cycle = 4%

Rext   = [100  200  300  400  500  600 700  800  900  1000 2000 3000 4000];
Vr_low = [.029 .054 .073 .087 .098 .108 .115 .122 .131 .133 .166 .184 .196];
OCV = .335;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 4;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 4% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc4', 'jpg');
saveas(h, 'dc4', 'fig');

%% LED duty cycle = 5%

Rext = [100  200  300 400  500  600  700  800  900  1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000 7000 17000];
Vr_low =   [.037 .069 .09 .107 .119 .13  .139 .147 .153 .159 .164 .168 .173 .177 .18 .183 .186 .189 .192  .194 .197 .198 .201 .204 .204 .206 .208 .209 .212 .213 .225 .234 .241 .247 .278];
OCV = .371;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 5;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 5% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc5', 'jpg');
saveas(h, 'dc5', 'fig');

%% LED duty cycle = 10%

Rext   = [100  200  300  400  500  600 700  800  900  1000 2000 3000 4000];
Vr_low = [.072 .131 .166 .191 .2   .223 .234 .244 .252 .259 .302 .322 .336];
OCV = .500;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 10;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 10% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc10', 'jpg');
saveas(h, 'dc10', 'fig');

%% LED duty cycle = 20%

Rext = [100  200  300 400  500  600  700  800  900  1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 4000 5000 6000 7000 17000];
Vr_low =   [.146 .262 .319 .355 .379 .398 .412 .424 .434 .442 .452 .457 .463 .468 .472 .477 .482 .485 .488 .491 .494 .497 .499 .502 .505 .506 .509 .511 .512 .515 .529 .54 .549 .556 .595];
OCV = .715;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 20;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 20% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc20', 'jpg');
saveas(h, 'dc20', 'fig');

%% LED duty cycle = 50%

Rext = [100  200  300 400  500  600  700  800  900  1000 ];
Vr_low =   [.35 .632 .756 .819 .859 .887 .908 .924 .934 .949];
OCV = 1.247;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 50;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 50% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc50', 'jpg');
saveas(h, 'dc50', 'fig');

%% LED duty cycle = 70%

Rext = [100  200  300  400   500   600   700   800   900   1000 ];
Vr_low =   [.457 .847 1.02 1.105 1.156 1.192 1.217 1.237 1.252 1.265];
OCV = 1.552;
Ir_low = Vr_low ./ Rext;
Pout_low = Vr_low .* Ir_low;

dc(nFig) = 70;
maxP(nFig) = max(Pout_low);
iMax = find(Pout_low >= maxP(nFig));
Ropt(nFig) = Rext(iMax);

h = figure(nFig);
nFig = nFig +1;
plot(Rext, Pout_low)
ylabel('P_o_u_t [W]')
xlabel('R_e_x_t [\Omega]')
title('Puissance de sortie d''une cellule solaire en fonction de la charge externe - 3 LED - 70% duty cycle')
% set(gca,'XTickLabel',num2str(get(gca,'XTick').'))
saveas(h, 'dc70', 'jpg');
saveas(h, 'dc70', 'fig');

%% Data
[dc' maxP' Ropt']