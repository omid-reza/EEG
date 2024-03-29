clear;
% Config plt
plt.dot_size=100;
plt.y.pre.group1.data=load("result\raw\amplitude\sham_eo\pre\Group1-Gamma.txt");
plt.y.pre.group2.data=load("result\raw\amplitude\sham_eo\pre\Group2-Gamma.txt");
plt.y.post.group1.data=load("result\raw\amplitude\sham_eo\post\Group1-Gamma.txt");
plt.y.post.group2.data=load("result\raw\amplitude\sham_eo\post\Group2-Gamma.txt");

plt.y.pre.color=[194 16 16].*4/1000;
plt.y.post.color=[41 52 98].*4/1000;
plt.x.pre.data=ones(1, length(plt.y.pre.group1.data));
plt.x.post.data=ones(1, length(plt.y.post.group1.data))+1;
% Draw a plt for group1
figure(39), clf;
subplot(2, 1, 1)
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group1.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group1.data, plt.dot_size, plt.y.post.color, "filled");
legend("Pre", "Post");
% Config plt for group1
set(gca,'XTick',[]);
ylabel("Gamma Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gcf, "NumberTitle", false, "Name", "Sham - EO - Gamma", "WindowState", "maximized");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
title('The First Group(F3, Fz, Fp1)');
% Draw a plt for group2
subplot(2, 1, 2);
hold on;
grid on;
swarmchart(plt.x.pre.data, plt.y.pre.group2.data, plt.dot_size, plt.y.pre.color, "filled");
swarmchart(plt.x.post.data, plt.y.post.group2.data, plt.dot_size, plt.y.post.color, "filled");
legend("Pre", "Post");
% Config plt for group2
set(gca,'XTick',[]);
ylabel("Gamma Amplitude", "Color", [21 19 60].*4/1000, "FontWeight", "bold");
set(gca, 'GridColor', [26 77 46].*4/1000);
set(gca, 'YColor', [26 77 46].*4/1000);
title('The Second Group(P3, T5, T3)');
% Save the plot as a fig file and a png file
savefig(gcf, "result\visual\fig\amplitude\sham_eo\Gamma");
saveas(gcf, "result\visual\png\amplitude\sham_eo\Gamma.png");