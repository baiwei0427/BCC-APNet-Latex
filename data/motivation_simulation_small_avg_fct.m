clear
clc

x=[
0.4
0.45
0.5
0.55
0.6
0.65
0.7
0.75
0.8
0.85
0.9
];

k_80=[
1
1
1
1
1
1
1
1
1
1
1
];

k_22=[
0.968085106
0.968421053
0.958762887
0.939393939
0.912621359
0.887850467
0.842105263
0.723880597
0.596385542
0.446428571
0.302052786
];

bcc_red=[
1
1
1
1
0.980582524
0.971962617
0.947368421
0.828358209
0.710843373
0.584821429
0.480938416
];

bcc_cut_off=[
1
1
1
0.98989899
0.970873786
0.962616822
0.921052632
0.813432836
0.680722892
0.535714286
0.419354839
];

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x * 100,k_80,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x * 100,k_22,'-ks','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x * 100,bcc_red,'-b*','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x * 100,bcc_cut_off,'-mv','LineWidth',3,...
    'MarkerSize',12);
hold on;

xlabel('Network Load (%)','FontSize', 20)
ylabel('Normalized FCT','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90]); % set font size of tick labels
%h=legend('DCTCP K=720KB','DCTCP K=200KB',20,'Location', 'SouthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0,1.2]);
grid on;
hold off;