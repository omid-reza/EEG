clear;
% Config general
plt.dot_size=100;
plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
figure(41),clf;
set(gcf, "NumberTitle", false, "Name", "Active - EC", "WindowState", "maximized");

% Draw plts of Alpha
subplot(2, 3, 1);
hold on;
grid on;
plt.y.pre.data=load("result\raw\connectivity\active_ec\pre\Alpha.txt");
plt.y.post.data=load("result\raw\connectivity\active_ec\post\Alpha.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt
set(gca,'XTick',[]);
ylabel("Alpha Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Draw plts of Beta
subplot(2, 3, 2);
hold on;
grid on;
plt.y.pre.data=load("result\raw\connectivity\active_ec\pre\Beta.txt");
plt.y.post.data=load("result\raw\connectivity\active_ec\post\Beta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt
set(gca,'XTick',[]);
ylabel("Beta Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Draw plts of Delta
subplot(2, 3, 3);
hold on;
grid on;
plt.y.pre.data=load("result\raw\connectivity\active_ec\pre\Delta.txt");
plt.y.post.data=load("result\raw\connectivity\active_ec\post\Delta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt
set(gca,'XTick',[]);
ylabel("Delta Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Draw plts of Gamma
subplot(2, 3, 4);
hold on;
grid on;
plt.y.pre.data=load("result\raw\connectivity\active_ec\pre\Gamma.txt");
plt.y.post.data=load("result\raw\connectivity\active_ec\post\Gamma.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt
set(gca,'XTick',[]);
ylabel("Gamma Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Draw plts of Theta
subplot(2, 3, 5);
hold on;
grid on;
plt.y.pre.data=load("result\raw\connectivity\active_ec\pre\Theta.txt");
plt.y.post.data=load("result\raw\connectivity\active_ec\post\Theta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.data));
plt.x.post.data=ones(1, length(plt.y.post.data))+1;
swarmchart(plt.x.pre.data, plt.y.pre.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt
set(gca,'XTick',[]);
ylabel("Theta Connectivity", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

lgnd=legend("Pre", "Post");
newPosition = [0.65 0.15 0.3 0.3];
newUnits = 'normalized';
set(lgnd,'Position', newPosition,'Units', newUnits, 'FontWeight', 'bold', 'FontSize', 10);

% Save the plot as a fig file and a png file
savefig(gcf, "result\visual\fig\connectivity\active_ec\Overview");
saveas(gcf, "result\visual\png\connectivity\active_ec\Overview.png");