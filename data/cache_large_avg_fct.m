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
1.243918919
1.234090909
1.22955341
1.212862571
1.223783441
1.236297199
1.208655935
1.17490253
1.162987037
1.124617902
1.090847298
];

bcc=[
1.003243243
1.013516746
1.017715074
1.008062274
1.010716837
1.013533631
1.015429176
1.004805513
1.011505846
1.029795906
1.021803352
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
axis([40,90,0.75,1.25]);
grid on;
hold off;