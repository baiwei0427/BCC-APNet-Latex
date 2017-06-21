data = [8.04; 57.2; 76.7; 87.16; 89.4];

b = bar(data, 0.5);
figure(1);
width=900;
height=480;
left=100;
bottem=0;

xlabel('Shared buffer thresh. (KB)','FontSize', 20);
ylabel('Goodput (Gbps)','FontSize', 20);
set(gca,'XTickLabel',{'500','1600','1650','1700','1750'}, 'FontSize', 20);

axis([0.5 5.5 0 100]);

grid on;