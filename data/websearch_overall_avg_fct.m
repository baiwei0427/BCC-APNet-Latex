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
1.070754717
1.067142857
1.053984576
1.043728423
1.04
1.037104072
1.03610675
1.026657997
1.015207132
0.998766954
0.947205928
];

bcc=[
1.001572327
1.004285714
1.003856041
1.003452244
0.998974359
0.997285068
0.994505495
0.975292588
0.962244363
0.947390053
0.923741896
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
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90], 'ytick',[0.8, 0.9, 1, 1.1, 1.2]); % set font size of tick labels
h=legend('DCTCP K=720KB','DCTCP K=200KB','BCC', 20,'Location', 'SouthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0.75,1.25]);
grid on;
hold off;