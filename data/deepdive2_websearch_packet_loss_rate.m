clear
clc

x=[
6,
7,
8,
9,
10
];

p_5=[
0.11647
0.10532
0.09566
0.08424
0.07268
];

p_10=[
0.09658
0.08503
0.06868
0.05734
0.04601
];

p_15=[
0.08372
0.06867
0.05863
0.04713
0.03541
];

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x, p_5,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x, p_10,'-ks','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x, p_15,'-b*','LineWidth',3,...
    'MarkerSize',12);
hold on;


xlabel('h (us)','FontSize', 20)
ylabel('Packet Loss Rate (%)','FontSize', 20);
set(gca, 'FontSize', 20); % set font size of tick labels
%h=legend('Pmax=5%','Pmax=10%','Pmax=15%',20,'Location', 'SouthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([6,10,0,0.2]);
grid on;
hold off;