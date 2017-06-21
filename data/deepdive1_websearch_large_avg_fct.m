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
0.999636562
0.999513934
0.996289954
0.997875266
1.009288602
1.017991004
1.022060549
1.043530452
1.077990361
1.117821891
1.109575304
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
axis([40,90,0.75,1.25]);
grid on;
hold off;