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
2988
2994
2975
2940
2953
];

p_10=[
2991
2997
2992
2984
2976
];

p_15=[
3002
3021
3047
3058
3055
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
ylabel('FCT (us)','FontSize', 20);
set(gca, 'FontSize', 20); % set font size of tick labels
h=legend('Pmax=5%','Pmax=10%','Pmax=15%',20,'Location', 'SouthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([6,10,2500,3200]);
grid on;
hold off;