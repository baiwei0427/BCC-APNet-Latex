clear
clc

x=[
25
50
75
100
125
150
175
200
225
250
275
300
325
];

tcp=[
47.59
56.48
62.41
66.95
71.24
74.65
77.83
80.52
83.18
86.03
88.29
89.33
89.5
];

dctcp=[
47.15
60
67.76
74.14
78.51
82.53
85.28
87.36
88.75
89.4
89.6
89.77
89.78
];

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x,tcp,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x,dctcp,'-ks','LineWidth',3,...
    'MarkerSize',12);
hold on;

xlabel('ECN marking threshold (KB)','FontSize', 20)
ylabel('Throughput (Gbps)','FontSize', 20);
set(gca, 'FontSize', 20); % set font size of tick labels
h=legend('ECN*','DCTCP',20,'Location', 'SouthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([25,325,0,100]);
grid on;
hold off;