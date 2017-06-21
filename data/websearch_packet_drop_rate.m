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
0.00
0.00
0.00
0.01
0.02
0.03
0.04
0.08
0.13
0.21
0.33
];

k_22=[
0
0
0.00
0.00
0.00
0.00
0.00
0.00
0.00
0.00
0.00
];

bcc=[
0.00
0.00
0.00
0.00
0.01
0.01
0.01
0.02
0.03
0.04
0.07
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
ylabel('Packet Loss Rate (%)','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90]); % set font size of tick labels
h=legend('DCTCP K=720KB','DCTCP K=200KB','BCC', 20,'Location', 'NorthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0,0.4]);
grid on;
hold off;