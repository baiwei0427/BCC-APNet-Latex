clear
clc

x=[
0.4,
0.45,
0.5,
0.55,
0.6,
0.65,
0.7,
0.75,
0.8,
0.85,
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
0.853448276
0.833333333
0.80952381
0.77037037
0.736111111
0.703225806
0.666666667
0.58974359
0.517391304
0.441281139
0.360335196
];

bcc=[
0.99137931
0.991666667
0.984126984
0.962962963
0.944444444
0.922580645
0.892857143
0.825641026
0.747826087
0.665480427
0.578212291
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
plot(x * 100,bcc,'-b*','LineWidth',3,...
    'MarkerSize',12);
hold on;

xlabel('Network Load (%)','FontSize', 20)
ylabel('Normalized FCT','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90]); % set font size of tick labels
axis([40,90,0,1.2]);
grid on;
hold off;