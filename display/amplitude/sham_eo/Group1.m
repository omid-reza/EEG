clear;
% Congif general settings
figure(51), clf;
set(gcf, "NumberTitle", false, "Name", "Sham - EO - The First Group(F3, Fz, Fp1)", "WindowState", "maximized");
plt.y.pre.color=[57 62 70].*4/1000;
plt.y.post.color=[250 119 0].*4/1000;
plt.dot_size=100;

% Config plt
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Alpha.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Alpha.txt");
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
ylabel("Alpha Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Beta.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Beta.txt");
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
ylabel("Beta Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Delta.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Delta.txt");
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
ylabel("Delta Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Gamma.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Gamma.txt");
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
ylabel("Gamma Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);

% Config plt
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Theta.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Theta.txt");
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
ylabel("Theta Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
% Set a legend for all of the plots
lgnd=legend("Pre", "Post");
newPosition = [0.65 0.15 0.3 0.3];
newUnits = 'normalized';
set(lgnd,'Position', newPosition,'Units', newUnits, 'FontWeight', 'bold', 'FontSize', 10);
% Save plot into a .fig file
savefig(gcf, "result\visual\amplitude\sham_eo\Group1");