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
5165
5147
428
398
360
];

p_10=[
402
374
346
336
309
];

p_15=[
408
348
326
312
304
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
%h=legend('Pmax=5%','Pmax=10%','Pmax=15%',20,'Location', 'SouthWest');
%set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([6,10,0,1000]);
grid on;
hold off;