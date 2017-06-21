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
1.095784543
1.089858233
1.10212853
1.104913679
1.110199092
1.119017433
1.115406084
1.112666034
1.087017874
1.063271496
1.032483475
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

xlabel('Network Load (%)','FontSize', 20)
ylabel('Normalized FCT','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90],'ytick',[0.6,0.8,1,1.2]); % set font size of tick labels
%h=legend('DCTCP K=720KB','DCTCP K=200KB',20,'Location', 'SouthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0.6,1.4]);
grid on;
hold off;