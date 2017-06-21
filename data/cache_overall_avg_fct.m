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
1.060453401
1.045558087
1.037190083
1.022304833
1.008250825
1.007331378
0.98857868
0.966267682
0.944139194
0.917114351
0.878266412
];

bcc=[
1
1
1
0.996282528
0.98349835
0.982404692
0.968274112
0.949945593
0.925824176
0.910207214
0.86998088
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
set(gca, 'FontSize', 20, 'xtick',[40,50,60,70,80,90], 'ytick',[0.8, 0.9, 1, 1.1, 1.2]); % set font size of tick labels
h=legend('DCTCP K=720KB','DCTCP K=200KB','BCC', 20,'Location', 'SouthWest');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([40,90,0.75,1.25]);
grid on;
hold off;