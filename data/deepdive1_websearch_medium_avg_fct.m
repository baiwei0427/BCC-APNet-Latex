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

bcc=[
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

bcc_cut_off=[
1.001033058
0.999067164
0.999159664
1.003009782
1.003373819
1.006594724
1.005786428
1.01754386
1.027694611
1.049165402
1.057847321
];

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x * 100,bcc,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x * 100,bcc_cut_off,'-bs','LineWidth',3,...
    'MarkerSize',12);
hold on;


xlabel('Network Load (%)','FontSize', 20)
ylabel('Normalized FCT','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90], 'ytick',[0.8, 0.9, 1, 1.1, 1.2]); % set font size of tick labels
h=legend('BCC','BCC cut-off', 20,'Location', 'SouthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0.75,1.25]);
grid on;
hold off;