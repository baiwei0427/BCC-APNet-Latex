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
0.620087336
0.611814346
0.5951417
0.589147287
0.581481481
0.565371025
0.560810811
0.522796353
0.034402783
0.034937744
0.03622393
];

bcc=[
0.986899563
0.987341772
0.983805668
0.968992248
0.959259259
0.946996466
0.929054054
0.863221884
0.056242752
0.057238432
0.063300402
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