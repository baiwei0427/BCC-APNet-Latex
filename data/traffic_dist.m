clear
clc

dctcp_x=[1500, 10000, 20000, 30000, 50000, 80000, 200000, 1000000, 2000000, 5000000, 10000000, 30000000];
dctcp_cdf=[0, 0.15, 0.2, 0.3, 0.4, 0.53, 0.6, 0.7, 0.8, 0.9, 0.97, 1];
cache_x=[500, 1500, 3000, 10000, 20000, 100000, 200000, 1000000, 2000000, 3000000, 4000000, 50000000];
cache_cdf=[0, 0.35, 0.4, 0.46, 0.5, 0.6, 0.7, 0.78, 0.8, 0.9, 0.99, 1];

plot(dctcp_x,dctcp_cdf,'-ks','LineWidth',4.5,...
    'MarkerSize',1);
hold on;
plot(cache_x,cache_cdf,'--bs','LineWidth',4.5,...
    'MarkerSize',1);
hold on;

xlabel('Flow Size (bytes)','FontSize', 20)
ylabel('CDF','FontSize', 20);
set(gca, 'FontSize', 20,'ytick',[0, 0.2, 0.4, 0.6, 0.8, 1], 'XScale','log', 'xtick', [100, 10000, 1000000, 100000000, 10000000000]); % set font size of tick labels
h=legend('Web search','Cache',20,'Location', 'SouthEast');
set(h,'FontSize',20,'LineWidth',1,'Box','off');
axis([100,10000000000,0,1]);
grid on;
hold off;