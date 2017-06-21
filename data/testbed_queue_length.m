clear
clc

x=[
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
];

p5_q=[
82576 
158080 
86528 
180960 
110240 
13104 
209872
55744 
256048
102752 
152256 
208624 
147056 
65104 
123136
];

p6_q=[
1459952 
1499888
1577888 
1472848 
1454544 
1486368 
1532128 
1529216 
1565824 
1490528
1580592 
1581216 
1578720
1467024
1493024
]

figure(1);
width=900;
height=480;
left=100;
bottem=0;

plot(x,p5_q/1000,'-ro','LineWidth',3,...
    'MarkerSize',12);
hold on;
plot(x,p6_q/1000,'-ks','LineWidth',3,...
    'MarkerSize',12);
hold on;

xlabel('Time (s)','FontSize', 20)
ylabel('Queue Length (KB)','FontSize', 20);
set(gca, 'FontSize', 20); % set font size of tick labels
h=legend('P5 (TCP Traffic)','P6 (UDP Traffic)',20,'Location', 'West');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
%axis([40,90,0,11000]);
grid on;
hold off;