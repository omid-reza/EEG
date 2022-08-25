clear;
% Congif general settings
figure(49), clf;
set(gcf, "NumberTitle", false, "Name", "Sham - EC - The First Group(F3, Fz, Fp1)", "WindowState", "maximized");
plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.dot_size=100;

% Config plt
plt.y.pre.group1.data=load("result\raw\power\sham_ec\pre\Group1-Alpha.txt");
plt.y.post.group1.data=load("result\raw\power\sham_ec\post\Group1-Alpha.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for Alpha
subplot(2, 3, 1);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt for Alpha
set(gca,'XTick',[]);
ylabel("Alpha Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\power\sham_ec\pre\Group1-Beta.txt");
plt.y.post.group1.data=load("result\raw\power\sham_ec\post\Group1-Beta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for Beta
subplot(2, 3, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt for Beta
set(gca,'XTick',[]);
ylabel("Beta Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\power\sham_ec\pre\Group1-Delta.txt");
plt.y.post.group1.data=load("result\raw\power\sham_ec\post\Group1-Delta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for Delta
subplot(2, 3, 3);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt for Delta
set(gca,'XTick',[]);
ylabel("Delta Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\power\sham_ec\pre\Group1-Gamma.txt");
plt.y.post.group1.data=load("result\raw\power\sham_ec\post\Group1-Gamma.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for Gamma
subplot(2, 3, 4);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt for Gamma
set(gca,'XTick',[]);
ylabel("Gamma Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\power\sham_ec\pre\Group1-Theta.txt");
plt.y.post.group1.data=load("result\raw\power\sham_ec\post\Group1-Theta.txt");
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for Theta
subplot(2, 3, 5);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
% Config plt for Theta
set(gca,'XTick',[]);
ylabel("Theta Power", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
% Set a legend for all of the plots
lgnd=legend("Pre", "Post");
newPosition = [0.65 0.15 0.3 0.3];
newUnits = 'normalized';
set(lgnd,'Position', newPosition,'Units', newUnits, 'FontWeight', 'bold', 'FontSize', 10);
% Save the plot as a fig file and a png file
savefig(gcf, "result\visual\fig\power\sham_ec\Group1");
saveas(gcf, "result\visual\png\power\sham_ec\Group1.png");