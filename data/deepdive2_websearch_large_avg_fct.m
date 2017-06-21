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
35981
36249
35770
35477
35980
];

p_10=[
36426
36534
36897
36712
36756
];

p_15=[
36660
37224
37804
38186
38318
];

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x, p_5/1000,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x, p_10/1000,'-ks','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x, p_15/1000,'-b*','LineWidth',3,...
    'MarkerSize',12);
hold on;


xlabel('h (us)','FontSize', 20)
ylabel('FCT (ms)','FontSize', 20);
set(gca, 'FontSize', 20); % set font size of tick labels
%h=legend('Pmax=5%','Pmax=10%','Pmax=15%',20,'Location', 'SouthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([6,10,30,40]);
grid on;
hold off;