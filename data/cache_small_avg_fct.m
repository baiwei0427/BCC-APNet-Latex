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
0.849557522
0.823529412
0.793650794
0.76119403
0.722222222
0.681528662
0.63583815
0.582474227
0.52
0.463601533
0.404530744
];

bcc=[
1
0.991596639
0.976190476
0.955223881
0.9375
0.904458599
0.867052023
0.824742268
0.755555556
0.712643678
0.637540453
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