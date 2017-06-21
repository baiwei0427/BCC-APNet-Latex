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
1.160737092
1.158373984
1.148994253
1.150424534
1.160373167
1.155986749
1.169251679
1.160704073
1.152621723
1.133972541
1.087323473
];

bcc=[
1.004013866
1.003577236
1.006896552
1.013939932
1.016326077
1.01012778
1.021985929
1.005782551
1.012270846
1.016751231
1.02774296
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