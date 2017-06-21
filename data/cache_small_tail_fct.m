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
0.634361233
0.607438017
0.608
0.593155894
0.578181818
0.565517241
0.551282051
0.520348837
0.036027264
0.03780135
0.038807111
];

bcc=[
1.004405286
0.979338843
0.98
0.965779468
0.952727273
0.937931034
0.897435897
0.834302326
0.057643622
0.061137898
0.064041292
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