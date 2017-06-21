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
2
9
11
32
70
113
251
686
1697
4017
10390
];

k_22=[
0
1
3
4
9
7
9
10
11
13
22
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
ylabel('TCP Timeouts','FontSize', 20);
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90]); % set font size of tick labels
%h=legend('DCTCP K=720KB','DCTCP K=200KB',20,'Location', 'NorthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0,11000]);
grid on;
hold off;